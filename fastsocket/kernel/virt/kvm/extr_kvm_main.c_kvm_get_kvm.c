
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int users_count; } ;


 int atomic_inc (int *) ;

void kvm_get_kvm(struct kvm *kvm)
{
 atomic_inc(&kvm->users_count);
}
