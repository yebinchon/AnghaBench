
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int param_set_uint (char const*,struct kernel_param*) ;
 int sanitize_global_limit (unsigned int*) ;

__attribute__((used)) static int set_global_limit(const char *val, struct kernel_param *kp)
{
 int rv;

 rv = param_set_uint(val, kp);
 if (rv)
  return rv;

 sanitize_global_limit((unsigned *)kp->arg);

 return 0;
}
