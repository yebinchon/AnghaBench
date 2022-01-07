
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct flock {int l_whence; scalar_t__ l_start; scalar_t__ l_len; int l_type; } ;
struct file_lock {scalar_t__ fl_end; scalar_t__ fl_start; int * fl_lmops; int * fl_ops; int fl_flags; struct file* fl_file; int fl_pid; int fl_owner; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ f_pos; TYPE_2__ f_path; } ;
typedef scalar_t__ off_t ;
struct TYPE_6__ {int tgid; int files; } ;
struct TYPE_4__ {int d_inode; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int FL_POSIX ;
 scalar_t__ OFFSET_MAX ;



 int assign_type (struct file_lock*,int ) ;
 TYPE_3__* current ;
 scalar_t__ i_size_read (int ) ;

__attribute__((used)) static int flock_to_posix_lock(struct file *filp, struct file_lock *fl,
          struct flock *l)
{
 off_t start, end;

 switch (l->l_whence) {
 case 128:
  start = 0;
  break;
 case 130:
  start = filp->f_pos;
  break;
 case 129:
  start = i_size_read(filp->f_path.dentry->d_inode);
  break;
 default:
  return -EINVAL;
 }



 start += l->l_start;
 if (start < 0)
  return -EINVAL;
 fl->fl_end = OFFSET_MAX;
 if (l->l_len > 0) {
  end = start + l->l_len - 1;
  fl->fl_end = end;
 } else if (l->l_len < 0) {
  end = start - 1;
  fl->fl_end = end;
  start += l->l_len;
  if (start < 0)
   return -EINVAL;
 }
 fl->fl_start = start;
 if (fl->fl_end < fl->fl_start)
  return -EOVERFLOW;

 fl->fl_owner = current->files;
 fl->fl_pid = current->tgid;
 fl->fl_file = filp;
 fl->fl_flags = FL_POSIX;
 fl->fl_ops = ((void*)0);
 fl->fl_lmops = ((void*)0);

 return assign_type(fl, l->l_type);
}
