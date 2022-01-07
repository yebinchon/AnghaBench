
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_ioapic {scalar_t__ id; scalar_t__ irr; scalar_t__ ioregsel; int base_address; TYPE_2__* redirtbl; } ;
struct TYPE_3__ {int mask; } ;
struct TYPE_4__ {TYPE_1__ fields; } ;


 int IOAPIC_DEFAULT_BASE_ADDRESS ;
 int IOAPIC_NUM_PINS ;
 int update_handled_vectors (struct kvm_ioapic*) ;

void kvm_ioapic_reset(struct kvm_ioapic *ioapic)
{
 int i;

 for (i = 0; i < IOAPIC_NUM_PINS; i++)
  ioapic->redirtbl[i].fields.mask = 1;
 ioapic->base_address = IOAPIC_DEFAULT_BASE_ADDRESS;
 ioapic->ioregsel = 0;
 ioapic->irr = 0;
 ioapic->id = 0;
 update_handled_vectors(ioapic);
}
