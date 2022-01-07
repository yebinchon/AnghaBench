
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;
typedef int pm_message_t ;


 int hardware_disable (int *) ;
 scalar_t__ kvm_usage_count ;

__attribute__((used)) static int kvm_suspend(struct sys_device *dev, pm_message_t state)
{
 if (kvm_usage_count)
  hardware_disable(((void*)0));
 return 0;
}
