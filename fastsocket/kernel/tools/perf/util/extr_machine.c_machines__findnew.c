
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strlist {int dummy; } ;
struct rb_root {int dummy; } ;
struct machine {scalar_t__ pid; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {char* guestmount; } ;


 scalar_t__ DEFAULT_GUEST_KERNEL_ID ;
 scalar_t__ HOST_KERNEL_ID ;
 int PATH_MAX ;
 int R_OK ;
 scalar_t__ access (char*,int ) ;
 struct machine* machines__add (struct rb_root*,scalar_t__,char const*) ;
 struct machine* machines__find (struct rb_root*,scalar_t__) ;
 int pr_err (char*,char*) ;
 int sprintf (char*,char*,char*,scalar_t__) ;
 int strlist__add (struct strlist*,char*) ;
 int strlist__has_entry (struct strlist*,char*) ;
 struct strlist* strlist__new (int,int *) ;
 TYPE_1__ symbol_conf ;

struct machine *machines__findnew(struct rb_root *machines, pid_t pid)
{
 char path[PATH_MAX];
 const char *root_dir = "";
 struct machine *machine = machines__find(machines, pid);

 if (machine && (machine->pid == pid))
  goto out;

 if ((pid != HOST_KERNEL_ID) &&
     (pid != DEFAULT_GUEST_KERNEL_ID) &&
     (symbol_conf.guestmount)) {
  sprintf(path, "%s/%d", symbol_conf.guestmount, pid);
  if (access(path, R_OK)) {
   static struct strlist *seen;

   if (!seen)
    seen = strlist__new(1, ((void*)0));

   if (!strlist__has_entry(seen, path)) {
    pr_err("Can't access file %s\n", path);
    strlist__add(seen, path);
   }
   machine = ((void*)0);
   goto out;
  }
  root_dir = path;
 }

 machine = machines__add(machines, pid, root_dir);
out:
 return machine;
}
