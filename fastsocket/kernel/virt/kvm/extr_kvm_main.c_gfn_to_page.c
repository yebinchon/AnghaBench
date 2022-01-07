
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm {int dummy; } ;
typedef int pfn_t ;
typedef int gfn_t ;


 int WARN_ON (int ) ;
 struct page* bad_page ;
 int get_page (struct page*) ;
 int gfn_to_pfn (struct kvm*,int ) ;
 int kvm_is_mmio_pfn (int ) ;
 struct page* pfn_to_page (int ) ;

struct page *gfn_to_page(struct kvm *kvm, gfn_t gfn)
{
 pfn_t pfn;

 pfn = gfn_to_pfn(kvm, gfn);
 if (!kvm_is_mmio_pfn(pfn))
  return pfn_to_page(pfn);

 WARN_ON(kvm_is_mmio_pfn(pfn));

 get_page(bad_page);
 return bad_page;
}
