
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* kernel_module_request ) (char*) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (char*) ;

int security_kernel_module_request(char *kmod_name)
{
 return security_ops->kernel_module_request(kmod_name);
}
