
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int CAP_DAC_OVERRIDE ;
 int CAP_DAC_READ_SEARCH ;
 int EACCES ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 scalar_t__ S_ISDIR (int ) ;
 int acl_permission_check (struct inode*,int,int (*) (struct inode*,int)) ;
 scalar_t__ capable (int ) ;
 scalar_t__ execute_ok (struct inode*) ;

int generic_permission(struct inode *inode, int mask,
  int (*check_acl)(struct inode *inode, int mask))
{
 int ret;




 ret = acl_permission_check(inode, mask, check_acl);
 if (ret != -EACCES)
  return ret;





 if (!(mask & MAY_EXEC) || execute_ok(inode))
  if (capable(CAP_DAC_OVERRIDE))
   return 0;




 mask &= MAY_READ | MAY_WRITE | MAY_EXEC;
 if (mask == MAY_READ || (S_ISDIR(inode->i_mode) && !(mask & MAY_WRITE)))
  if (capable(CAP_DAC_READ_SEARCH))
   return 0;

 return -EACCES;
}
