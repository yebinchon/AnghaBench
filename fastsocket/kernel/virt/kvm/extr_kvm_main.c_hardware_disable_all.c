
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* this_device; } ;
struct TYPE_3__ {int kobj; } ;


 int KOBJ_CHANGE ;
 int hardware_disable_all_nolock () ;
 int kobject_uevent_env (int *,int ,char**) ;
 TYPE_2__ kvm_dev ;
 int kvm_lock ;
 int kvm_usage_count ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void hardware_disable_all(void)
{
 int count;
 char count_string[20];
 char event_string[] = "EVENT=terminate";
 char *envp[] = { event_string, count_string, ((void*)0) };

 spin_lock(&kvm_lock);
 hardware_disable_all_nolock();
 count = kvm_usage_count;
 spin_unlock(&kvm_lock);

 sprintf(count_string, "COUNT=%d", count);
 kobject_uevent_env(&kvm_dev.this_device->kobj, KOBJ_CHANGE, envp);
}
