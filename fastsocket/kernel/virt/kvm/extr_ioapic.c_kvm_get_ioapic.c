
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_ioapic_state {int dummy; } ;
struct kvm_ioapic {int lock; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 struct kvm_ioapic* ioapic_irqchip (struct kvm*) ;
 int memcpy (struct kvm_ioapic_state*,struct kvm_ioapic*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int kvm_get_ioapic(struct kvm *kvm, struct kvm_ioapic_state *state)
{
 struct kvm_ioapic *ioapic = ioapic_irqchip(kvm);
 if (!ioapic)
  return -EINVAL;

 spin_lock(&ioapic->lock);
 memcpy(state, ioapic, sizeof(struct kvm_ioapic_state));
 spin_unlock(&ioapic->lock);
 return 0;
}
