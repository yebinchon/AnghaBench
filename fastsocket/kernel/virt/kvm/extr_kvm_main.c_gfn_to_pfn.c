
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pfn_t ;
typedef int gfn_t ;


 int bad_page ;
 int get_page (int ) ;
 unsigned long gfn_to_hva (struct kvm*,int ) ;
 int hva_to_pfn (struct kvm*,unsigned long) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;
 int page_to_pfn (int ) ;

pfn_t gfn_to_pfn(struct kvm *kvm, gfn_t gfn)
{
 unsigned long addr;

 addr = gfn_to_hva(kvm, gfn);
 if (kvm_is_error_hva(addr)) {
  get_page(bad_page);
  return page_to_pfn(bad_page);
 }

 return hva_to_pfn(kvm, addr);
}
