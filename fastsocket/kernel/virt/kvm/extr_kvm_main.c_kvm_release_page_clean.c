
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int kvm_release_pfn_clean (int ) ;
 int page_to_pfn (struct page*) ;

void kvm_release_page_clean(struct page *page)
{
 kvm_release_pfn_clean(page_to_pfn(page));
}
