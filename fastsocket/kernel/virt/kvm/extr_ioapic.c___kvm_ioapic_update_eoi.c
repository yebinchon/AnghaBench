
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vector; int trig_mode; int mask; scalar_t__ remote_irr; } ;
union kvm_ioapic_redirect_entry {TYPE_1__ fields; } ;
struct kvm_ioapic {int irr; int lock; int kvm; union kvm_ioapic_redirect_entry* redirtbl; } ;


 int ASSERT (int) ;
 int IOAPIC_LEVEL_TRIG ;
 int IOAPIC_NUM_PINS ;
 int KVM_IRQCHIP_IOAPIC ;
 int ioapic_service (struct kvm_ioapic*,int) ;
 int kvm_notify_acked_irq (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __kvm_ioapic_update_eoi(struct kvm_ioapic *ioapic, int vector,
         int trigger_mode)
{
 int i;

 for (i = 0; i < IOAPIC_NUM_PINS; i++) {
  union kvm_ioapic_redirect_entry *ent = &ioapic->redirtbl[i];

  if (ent->fields.vector != vector)
   continue;
  spin_unlock(&ioapic->lock);
  kvm_notify_acked_irq(ioapic->kvm, KVM_IRQCHIP_IOAPIC, i);
  spin_lock(&ioapic->lock);

  if (trigger_mode != IOAPIC_LEVEL_TRIG)
   continue;

  ASSERT(ent->fields.trig_mode == IOAPIC_LEVEL_TRIG);
  ent->fields.remote_irr = 0;
  if (!ent->fields.mask && (ioapic->irr & (1 << i)))
   ioapic_service(ioapic, i);
 }
}
