
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {int nmemslots; int * memslots; } ;
struct kvm {struct kvm_memslots* memslots; } ;


 int kfree (struct kvm_memslots*) ;
 int kvm_free_physmem_slot (int *,int *) ;

void kvm_free_physmem(struct kvm *kvm)
{
 int i;
 struct kvm_memslots *slots = kvm->memslots;

 for (i = 0; i < slots->nmemslots; ++i)
  kvm_free_physmem_slot(&slots->memslots[i], ((void*)0));

 kfree(kvm->memslots);
}
