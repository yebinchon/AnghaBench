
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 int HZ ;
 int simple_strtol (char const*,char**,int ) ;

__attribute__((used)) static int param_set_idmap_timeout(const char *val, struct kernel_param *kp)
{
 char *endp;
 int num = simple_strtol(val, &endp, 0);
 int jif = num * HZ;
 if (endp == val || *endp || num < 0 || jif < num)
  return -EINVAL;
 *((int *)kp->arg) = jif;
 return 0;
}
