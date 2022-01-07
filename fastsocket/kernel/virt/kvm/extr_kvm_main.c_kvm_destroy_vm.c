
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct kvm {struct mm_struct* mm; int mmu_notifier; int * coalesced_mmio_ring; int * buses; int vm_list; } ;


 int KVM_NR_BUSES ;
 int free_page (unsigned long) ;
 int hardware_disable_all () ;
 int kvm_arch_destroy_vm (struct kvm*) ;
 int kvm_arch_flush_shadow (struct kvm*) ;
 int kvm_arch_sync_events (struct kvm*) ;
 int kvm_free_irq_routing (struct kvm*) ;
 int kvm_io_bus_destroy (int ) ;
 int kvm_lock ;
 int list_del (int *) ;
 int mmdrop (struct mm_struct*) ;
 int mmu_notifier_unregister (int *,struct mm_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void kvm_destroy_vm(struct kvm *kvm)
{
 int i;
 struct mm_struct *mm = kvm->mm;

 kvm_arch_sync_events(kvm);
 spin_lock(&kvm_lock);
 list_del(&kvm->vm_list);
 spin_unlock(&kvm_lock);
 kvm_free_irq_routing(kvm);
 for (i = 0; i < KVM_NR_BUSES; i++)
  kvm_io_bus_destroy(kvm->buses[i]);







 kvm_arch_flush_shadow(kvm);

 kvm_arch_destroy_vm(kvm);
 hardware_disable_all();
 mmdrop(mm);
}
