
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_pic {int dummy; } ;
struct TYPE_2__ {int pin; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ irqchip; } ;
struct kvm {int dummy; } ;


 int kvm_pic_set_irq (struct kvm_pic*,int ,int,int) ;
 struct kvm_pic* pic_irqchip (struct kvm*) ;

__attribute__((used)) static int kvm_set_pic_irq(struct kvm_kernel_irq_routing_entry *e,
      struct kvm *kvm, int irq_source_id, int level)
{




 return -1;

}
