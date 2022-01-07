
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_ioapic {int handled_vectors; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; } ;


 int smp_rmb () ;
 int test_bit (int,int ) ;

bool kvm_ioapic_handles_vector(struct kvm *kvm, int vector)
{
 struct kvm_ioapic *ioapic = kvm->arch.vioapic;
 smp_rmb();
 return test_bit(vector, ioapic->handled_vectors);
}
