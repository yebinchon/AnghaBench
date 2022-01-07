
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int irq_routing; } ;


 int kfree (int ) ;

void kvm_free_irq_routing(struct kvm *kvm)
{


 kfree(kvm->irq_routing);
}
