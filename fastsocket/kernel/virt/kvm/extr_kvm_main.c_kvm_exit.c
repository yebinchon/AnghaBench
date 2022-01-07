
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __free_page (int ) ;
 int bad_page ;
 int cpus_hardware_enabled ;
 int free_cpumask_var (int ) ;
 int hardware_disable ;
 int hwpoison_page ;
 int kmem_cache_destroy (int ) ;
 int kvm_arch_exit () ;
 int kvm_arch_hardware_unsetup () ;
 int kvm_cpu_notifier ;
 int kvm_dev ;
 int kvm_exit_debug () ;
 int kvm_reboot_notifier ;
 int kvm_sysdev ;
 int kvm_sysdev_class ;
 int kvm_vcpu_cache ;
 int misc_deregister (int *) ;
 int on_each_cpu (int ,int *,int) ;
 int sysdev_class_unregister (int *) ;
 int sysdev_unregister (int *) ;
 int tracepoint_synchronize_unregister () ;
 int unregister_cpu_notifier (int *) ;
 int unregister_reboot_notifier (int *) ;

void kvm_exit(void)
{
 tracepoint_synchronize_unregister();
 kvm_exit_debug();
 misc_deregister(&kvm_dev);
 kmem_cache_destroy(kvm_vcpu_cache);
 sysdev_unregister(&kvm_sysdev);
 sysdev_class_unregister(&kvm_sysdev_class);
 unregister_reboot_notifier(&kvm_reboot_notifier);
 unregister_cpu_notifier(&kvm_cpu_notifier);
 on_each_cpu(hardware_disable, ((void*)0), 1);
 kvm_arch_hardware_unsetup();
 kvm_arch_exit();
 free_cpumask_var(cpus_hardware_enabled);
 __free_page(hwpoison_page);
 __free_page(bad_page);
}
