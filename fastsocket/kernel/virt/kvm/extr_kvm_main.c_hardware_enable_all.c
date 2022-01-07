
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* this_device; } ;
struct TYPE_3__ {int kobj; } ;


 int EBUSY ;
 int KOBJ_CHANGE ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int hardware_disable_all_nolock () ;
 int hardware_enable ;
 int hardware_enable_failed ;
 int kobject_uevent_env (int *,int ,char**) ;
 TYPE_2__ kvm_dev ;
 int kvm_lock ;
 int kvm_usage_count ;
 int on_each_cpu (int ,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int hardware_enable_all(void)
{
 int r = 0;
 int count;

 spin_lock(&kvm_lock);

 count = ++kvm_usage_count;
 if (kvm_usage_count == 1) {
  atomic_set(&hardware_enable_failed, 0);
  on_each_cpu(hardware_enable, ((void*)0), 1);

  if (atomic_read(&hardware_enable_failed)) {
   hardware_disable_all_nolock();
   r = -EBUSY;
  }
 }

 spin_unlock(&kvm_lock);

 if (r == 0) {
  char count_string[20];
  char event_string[] = "EVENT=create";
  char *envp[] = { event_string, count_string, ((void*)0) };

  sprintf(count_string, "COUNT=%d", count);
  kobject_uevent_env(&kvm_dev.this_device->kobj, KOBJ_CHANGE, envp);
 }
 return r;
}
