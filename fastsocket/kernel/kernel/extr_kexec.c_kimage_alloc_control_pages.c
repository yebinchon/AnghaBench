
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kimage {int type; } ;




 struct page* kimage_alloc_crash_control_pages (struct kimage*,unsigned int) ;
 struct page* kimage_alloc_normal_control_pages (struct kimage*,unsigned int) ;

struct page *kimage_alloc_control_pages(struct kimage *image,
      unsigned int order)
{
 struct page *pages = ((void*)0);

 switch (image->type) {
 case 128:
  pages = kimage_alloc_normal_control_pages(image, order);
  break;
 case 129:
  pages = kimage_alloc_crash_control_pages(image, order);
  break;
 }

 return pages;
}
