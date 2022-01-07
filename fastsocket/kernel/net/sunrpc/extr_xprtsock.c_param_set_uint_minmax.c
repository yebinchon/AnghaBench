
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static int param_set_uint_minmax(const char *val, struct kernel_param *kp,
  unsigned int min, unsigned int max)
{
 unsigned long num;
 int ret;

 if (!val)
  return -EINVAL;
 ret = strict_strtoul(val, 0, &num);
 if (ret == -EINVAL || num < min || num > max)
  return -EINVAL;
 *((unsigned int *)kp->arg) = num;
 return 0;
}
