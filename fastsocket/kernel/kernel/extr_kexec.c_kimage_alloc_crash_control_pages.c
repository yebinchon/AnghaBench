
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct kimage {unsigned long control_page; unsigned long nr_segments; TYPE_1__* segment; } ;
struct TYPE_4__ {unsigned long end; } ;
struct TYPE_3__ {unsigned long mem; unsigned long memsz; } ;


 unsigned long KEXEC_CRASH_CONTROL_MEMORY_LIMIT ;
 int PAGE_SHIFT ;
 TYPE_2__ crashk_res ;
 struct page* pfn_to_page (unsigned long) ;

__attribute__((used)) static struct page *kimage_alloc_crash_control_pages(struct kimage *image,
            unsigned int order)
{
 unsigned long hole_start, hole_end, size;
 struct page *pages;

 pages = ((void*)0);
 size = (1 << order) << PAGE_SHIFT;
 hole_start = (image->control_page + (size - 1)) & ~(size - 1);
 hole_end = hole_start + size - 1;
 while (hole_end <= crashk_res.end) {
  unsigned long i;

  if (hole_end > KEXEC_CRASH_CONTROL_MEMORY_LIMIT)
   break;
  if (hole_end > crashk_res.end)
   break;

  for (i = 0; i < image->nr_segments; i++) {
   unsigned long mstart, mend;

   mstart = image->segment[i].mem;
   mend = mstart + image->segment[i].memsz - 1;
   if ((hole_end >= mstart) && (hole_start <= mend)) {

    hole_start = (mend + (size - 1)) & ~(size - 1);
    hole_end = hole_start + size - 1;
    break;
   }
  }

  if (i == image->nr_segments) {
   pages = pfn_to_page(hole_start >> PAGE_SHIFT);
   break;
  }
 }
 if (pages)
  image->control_page = hole_end;

 return pages;
}
