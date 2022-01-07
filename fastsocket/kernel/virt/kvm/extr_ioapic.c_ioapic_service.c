
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ trig_mode; int remote_irr; int mask; } ;
union kvm_ioapic_redirect_entry {TYPE_1__ fields; } ;
struct kvm_ioapic {union kvm_ioapic_redirect_entry* redirtbl; } ;


 scalar_t__ IOAPIC_LEVEL_TRIG ;
 int ioapic_deliver (struct kvm_ioapic*,unsigned int) ;

__attribute__((used)) static int ioapic_service(struct kvm_ioapic *ioapic, unsigned int idx)
{
 union kvm_ioapic_redirect_entry *pent;
 int injected = -1;

 pent = &ioapic->redirtbl[idx];

 if (!pent->fields.mask) {
  injected = ioapic_deliver(ioapic, idx);
  if (injected && pent->fields.trig_mode == IOAPIC_LEVEL_TRIG)
   pent->fields.remote_irr = 1;
 }

 return injected;
}
