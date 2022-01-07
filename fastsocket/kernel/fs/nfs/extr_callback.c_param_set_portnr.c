
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 unsigned long NFS_CALLBACK_MAXPORTNR ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static int param_set_portnr(const char *val, struct kernel_param *kp)
{
 unsigned long num;
 int ret;

 if (!val)
  return -EINVAL;
 ret = strict_strtoul(val, 0, &num);
 if (ret == -EINVAL || num > NFS_CALLBACK_MAXPORTNR)
  return -EINVAL;
 *((unsigned int *)kp->arg) = num;
 return 0;
}
