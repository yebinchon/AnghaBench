
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {unsigned long f_flags; int f_lock; TYPE_5__* f_op; TYPE_4__* f_mapping; TYPE_2__ f_path; } ;
struct TYPE_10__ {int (* check_flags ) (unsigned long) ;int (* fasync ) (int,struct file*,int) ;} ;
struct TYPE_9__ {TYPE_3__* a_ops; } ;
struct TYPE_8__ {int direct_IO; } ;
struct TYPE_6__ {struct inode* d_inode; } ;


 int EINVAL ;
 int EPERM ;
 unsigned long FASYNC ;
 scalar_t__ IS_APPEND (struct inode*) ;
 unsigned long O_APPEND ;
 unsigned long O_DIRECT ;
 unsigned long O_NDELAY ;
 unsigned long O_NOATIME ;
 unsigned long O_NONBLOCK ;
 unsigned long SETFL_MASK ;
 int is_owner_or_cap (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned long) ;
 int stub2 (int,struct file*,int) ;

__attribute__((used)) static int setfl(int fd, struct file * filp, unsigned long arg)
{
 struct inode * inode = filp->f_path.dentry->d_inode;
 int error = 0;





 if (((arg ^ filp->f_flags) & O_APPEND) && IS_APPEND(inode))
  return -EPERM;


 if ((arg & O_NOATIME) && !(filp->f_flags & O_NOATIME))
  if (!is_owner_or_cap(inode))
   return -EPERM;


 if (O_NONBLOCK != O_NDELAY)
        if (arg & O_NDELAY)
     arg |= O_NONBLOCK;

 if (arg & O_DIRECT) {
  if (!filp->f_mapping || !filp->f_mapping->a_ops ||
   !filp->f_mapping->a_ops->direct_IO)
    return -EINVAL;
 }

 if (filp->f_op && filp->f_op->check_flags)
  error = filp->f_op->check_flags(arg);
 if (error)
  return error;




 if (((arg ^ filp->f_flags) & FASYNC) && filp->f_op &&
   filp->f_op->fasync) {
  error = filp->f_op->fasync(fd, filp, (arg & FASYNC) != 0);
  if (error < 0)
   goto out;
  if (error > 0)
   error = 0;
 }
 spin_lock(&filp->f_lock);
 filp->f_flags = (arg & SETFL_MASK) | (filp->f_flags & ~SETFL_MASK);
 spin_unlock(&filp->f_lock);

 out:
 return error;
}
