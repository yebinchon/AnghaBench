
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int pfn_t ;
typedef int gfn_t ;


 unsigned long gfn_to_hva_memslot (struct kvm_memory_slot*,int ) ;
 int hva_to_pfn (struct kvm*,unsigned long) ;

pfn_t gfn_to_pfn_memslot(struct kvm *kvm,
    struct kvm_memory_slot *slot, gfn_t gfn)
{
 unsigned long addr = gfn_to_hva_memslot(slot, gfn);
 return hva_to_pfn(kvm, addr);
}
