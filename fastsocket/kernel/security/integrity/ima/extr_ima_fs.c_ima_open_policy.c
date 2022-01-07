
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int EACCES ;
 int EBUSY ;
 int O_WRONLY ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int policy_opencount ;

int ima_open_policy(struct inode * inode, struct file * filp)
{

 if (!(filp->f_flags & O_WRONLY))
  return -EACCES;
 if (atomic_dec_and_test(&policy_opencount))
  return 0;
 return -EBUSY;
}
