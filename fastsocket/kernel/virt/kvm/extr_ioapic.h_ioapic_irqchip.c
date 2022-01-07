
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ioapic {int dummy; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; } ;



__attribute__((used)) static inline struct kvm_ioapic *ioapic_irqchip(struct kvm *kvm)
{
 return kvm->arch.vioapic;
}
