
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int EAGAIN ;
 int F_UNLCK ;
 int lease_modify (struct file_lock**,int) ;

__attribute__((used)) static
int nfsd_change_deleg_cb(struct file_lock **onlist, int arg)
{
 if (arg & F_UNLCK)
  return lease_modify(onlist, arg);
 else
  return -EAGAIN;
}
