
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ioapic {int lock; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; } ;


 int __kvm_ioapic_update_eoi (struct kvm_ioapic*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_ioapic_update_eoi(struct kvm *kvm, int vector, int trigger_mode)
{
 struct kvm_ioapic *ioapic = kvm->arch.vioapic;

 spin_lock(&ioapic->lock);
 __kvm_ioapic_update_eoi(ioapic, vector, trigger_mode);
 spin_unlock(&ioapic->lock);
}
