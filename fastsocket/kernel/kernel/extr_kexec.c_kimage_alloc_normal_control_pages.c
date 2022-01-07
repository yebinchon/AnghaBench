
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct list_head {int dummy; } ;
struct kimage {struct list_head control_pages; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 unsigned long KEXEC_CONTROL_MEMORY_LIMIT ;
 unsigned long PAGE_SHIFT ;
 struct page* kimage_alloc_pages (int ,unsigned int) ;
 int kimage_free_page_list (struct list_head*) ;
 scalar_t__ kimage_is_destination_range (struct kimage*,unsigned long,unsigned long) ;
 int list_add (int *,struct list_head*) ;
 unsigned long page_to_pfn (struct page*) ;

__attribute__((used)) static struct page *kimage_alloc_normal_control_pages(struct kimage *image,
       unsigned int order)
{
 struct list_head extra_pages;
 struct page *pages;
 unsigned int count;

 count = 1 << order;
 INIT_LIST_HEAD(&extra_pages);




 do {
  unsigned long pfn, epfn, addr, eaddr;

  pages = kimage_alloc_pages(GFP_KERNEL, order);
  if (!pages)
   break;
  pfn = page_to_pfn(pages);
  epfn = pfn + count;
  addr = pfn << PAGE_SHIFT;
  eaddr = epfn << PAGE_SHIFT;
  if ((epfn >= (KEXEC_CONTROL_MEMORY_LIMIT >> PAGE_SHIFT)) ||
         kimage_is_destination_range(image, addr, eaddr)) {
   list_add(&pages->lru, &extra_pages);
   pages = ((void*)0);
  }
 } while (!pages);

 if (pages) {

  list_add(&pages->lru, &image->control_pages);







 }







 kimage_free_page_list(&extra_pages);

 return pages;
}
