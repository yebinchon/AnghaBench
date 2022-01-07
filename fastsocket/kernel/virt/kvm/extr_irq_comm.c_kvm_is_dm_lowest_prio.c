
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic_irq {int delivery_mode; } ;


 int APIC_DM_LOWEST ;
 int IOSAPIC_DELIVERY_SHIFT ;
 int IOSAPIC_LOWEST_PRIORITY ;

__attribute__((used)) inline static bool kvm_is_dm_lowest_prio(struct kvm_lapic_irq *irq)
{




 return irq->delivery_mode == APIC_DM_LOWEST;

}
