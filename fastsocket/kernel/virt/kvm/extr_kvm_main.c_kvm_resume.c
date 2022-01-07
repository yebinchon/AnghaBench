
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int hardware_enable (int *) ;
 scalar_t__ kvm_usage_count ;

__attribute__((used)) static int kvm_resume(struct sys_device *dev)
{
 if (kvm_usage_count)
  hardware_enable(((void*)0));
 return 0;
}
