
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int delivery_mode; int trig_mode; scalar_t__ dest_mode; int vector; int dest_id; int dest; } ;
union kvm_ioapic_redirect_entry {TYPE_1__ fields; } ;
struct kvm_lapic_irq {int delivery_mode; int level; int dest_id; scalar_t__ dest_mode; scalar_t__ shorthand; int trig_mode; int vector; } ;
struct kvm_ioapic {TYPE_3__* kvm; union kvm_ioapic_redirect_entry* redirtbl; } ;
struct TYPE_6__ {TYPE_2__* bsp_vcpu; } ;
struct TYPE_5__ {int vcpu_id; } ;


 int ioapic_debug (char*,int ,scalar_t__,int,int ,int ) ;
 int kvm_irq_delivery_to_apic (TYPE_3__*,int *,struct kvm_lapic_irq*) ;

__attribute__((used)) static int ioapic_deliver(struct kvm_ioapic *ioapic, int irq)
{
 union kvm_ioapic_redirect_entry *entry = &ioapic->redirtbl[irq];
 struct kvm_lapic_irq irqe;

 ioapic_debug("dest=%x dest_mode=%x delivery_mode=%x "
       "vector=%x trig_mode=%x\n",
       entry->fields.dest, entry->fields.dest_mode,
       entry->fields.delivery_mode, entry->fields.vector,
       entry->fields.trig_mode);

 irqe.dest_id = entry->fields.dest_id;
 irqe.vector = entry->fields.vector;
 irqe.dest_mode = entry->fields.dest_mode;
 irqe.trig_mode = entry->fields.trig_mode;
 irqe.delivery_mode = entry->fields.delivery_mode << 8;
 irqe.level = 1;
 irqe.shorthand = 0;
 return kvm_irq_delivery_to_apic(ioapic->kvm, ((void*)0), &irqe);
}
