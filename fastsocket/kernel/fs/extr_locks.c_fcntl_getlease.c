
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file_lock {int fl_type; struct file* fl_file; struct file_lock* fl_next; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {struct file_lock* i_flock; } ;
struct TYPE_4__ {TYPE_3__* d_inode; } ;


 int F_INPROGRESS ;
 int F_UNLCK ;
 scalar_t__ IS_LEASE (struct file_lock*) ;
 int lock_kernel () ;
 int time_out_leases (TYPE_3__*) ;
 int unlock_kernel () ;

int fcntl_getlease(struct file *filp)
{
 struct file_lock *fl;
 int type = F_UNLCK;

 lock_kernel();
 time_out_leases(filp->f_path.dentry->d_inode);
 for (fl = filp->f_path.dentry->d_inode->i_flock; fl && IS_LEASE(fl);
   fl = fl->fl_next) {
  if (fl->fl_file == filp) {
   type = fl->fl_type & ~F_INPROGRESS;
   break;
  }
 }
 unlock_kernel();
 return type;
}
