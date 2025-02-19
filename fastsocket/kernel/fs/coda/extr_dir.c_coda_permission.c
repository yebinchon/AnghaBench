
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int EACCES ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 scalar_t__ coda_cache_check (struct inode*,int) ;
 int coda_cache_enter (struct inode*,int) ;
 int coda_i2f (struct inode*) ;
 int execute_ok (struct inode*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int venus_access (int ,int ,int) ;

int coda_permission(struct inode *inode, int mask)
{
        int error = 0;

 mask &= MAY_READ | MAY_WRITE | MAY_EXEC;

 if (!mask)
  return 0;

 if ((mask & MAY_EXEC) && !execute_ok(inode))
  return -EACCES;

 lock_kernel();

 if (coda_cache_check(inode, mask))
  goto out;

        error = venus_access(inode->i_sb, coda_i2f(inode), mask);

 if (!error)
  coda_cache_enter(inode, mask);

 out:
 unlock_kernel();
 return error;
}
