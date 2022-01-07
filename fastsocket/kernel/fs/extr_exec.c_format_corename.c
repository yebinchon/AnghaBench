
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {long tv_sec; } ;
struct cred {long uid; long gid; } ;
struct core_name {int size; int corename; scalar_t__ used; } ;
struct TYPE_5__ {long comm; } ;
struct TYPE_4__ {long nodename; } ;


 int CORENAME_MAX_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RLIMIT_CORE ;
 int atomic_read (int *) ;
 int call_count ;
 int cn_print_exe_file (struct core_name*) ;
 int cn_printf (struct core_name*,char*,long) ;
 char* core_pattern ;
 scalar_t__ core_uses_pid ;
 TYPE_2__* current ;
 struct cred* current_cred () ;
 int do_gettimeofday (struct timeval*) ;
 int down_read (int *) ;
 int kmalloc (int,int ) ;
 long rlimit (int ) ;
 long task_tgid_vnr (TYPE_2__*) ;
 int up_read (int *) ;
 int uts_sem ;
 TYPE_1__* utsname () ;

__attribute__((used)) static int format_corename(struct core_name *cn, long signr)
{
 const struct cred *cred = current_cred();
 const char *pat_ptr = core_pattern;
 int ispipe = (*pat_ptr == '|');
 int pid_in_pattern = 0;

 int err = 0;

 cn->size = CORENAME_MAX_SIZE * atomic_read(&call_count);
 cn->corename = kmalloc(cn->size, GFP_KERNEL);
 cn->used = 0;

 if (!cn->corename)
  return -ENOMEM;



 while (*pat_ptr) {
  if (*pat_ptr != '%') {
   if (*pat_ptr == 0)
    goto out;
   err = cn_printf(cn, "%c", *pat_ptr++);
  } else {
   switch (*++pat_ptr) {

   case 0:
    goto out;

   case '%':
    err = cn_printf(cn, "%c", '%');
    break;

   case 'p':
    pid_in_pattern = 1;
    err = cn_printf(cn, "%d",
           task_tgid_vnr(current));
    break;

   case 'u':
    err = cn_printf(cn, "%d", cred->uid);
    break;

   case 'g':
    err = cn_printf(cn, "%d", cred->gid);
    break;

   case 's':
    err = cn_printf(cn, "%ld", signr);
    break;

   case 't': {
    struct timeval tv;
    do_gettimeofday(&tv);
    err = cn_printf(cn, "%lu", tv.tv_sec);
    break;
   }

   case 'h':
    down_read(&uts_sem);
    err = cn_printf(cn, "%s",
           utsname()->nodename);
    up_read(&uts_sem);
    break;

   case 'e':
    err = cn_printf(cn, "%s", current->comm);
    break;
   case 'E':
    err = cn_print_exe_file(cn);
    break;

   case 'c':
    err = cn_printf(cn, "%lu",
           rlimit(RLIMIT_CORE));
    break;
   default:
    break;
   }
   ++pat_ptr;
  }

  if (err)
   return err;
 }





 if (!ispipe && !pid_in_pattern && core_uses_pid) {
  err = cn_printf(cn, ".%d", task_tgid_vnr(current));
  if (err)
   return err;
 }
out:
 return ispipe;
}
