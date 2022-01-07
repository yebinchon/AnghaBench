
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int hardware_disable ;
 int kvm_usage_count ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static void hardware_disable_all_nolock(void)
{
 BUG_ON(!kvm_usage_count);

 kvm_usage_count--;
 if (!kvm_usage_count)
  on_each_cpu(hardware_disable, ((void*)0), 1);
}
