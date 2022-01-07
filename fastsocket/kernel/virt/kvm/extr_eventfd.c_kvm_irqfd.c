
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int KVM_IRQFD_FLAG_DEASSIGN ;
 int kvm_irqfd_assign (struct kvm*,int,int) ;
 int kvm_irqfd_deassign (struct kvm*,int,int) ;

int
kvm_irqfd(struct kvm *kvm, int fd, int gsi, int flags)
{
 if (flags & KVM_IRQFD_FLAG_DEASSIGN)
  return kvm_irqfd_deassign(kvm, fd, gsi);

 return kvm_irqfd_assign(kvm, fd, gsi);
}
