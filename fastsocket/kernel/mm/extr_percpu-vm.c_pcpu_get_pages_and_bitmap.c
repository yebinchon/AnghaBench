
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int populated; } ;
struct page {int dummy; } ;
typedef int pages ;


 int BITS_TO_LONGS (int) ;
 int bitmap_copy (unsigned long*,int ,int) ;
 int memset (struct page**,int ,size_t) ;
 void* pcpu_mem_alloc (size_t) ;
 int pcpu_nr_units ;
 int pcpu_unit_pages ;

__attribute__((used)) static struct page **pcpu_get_pages_and_bitmap(struct pcpu_chunk *chunk,
            unsigned long **bitmapp,
            bool may_alloc)
{
 static struct page **pages;
 static unsigned long *bitmap;
 size_t pages_size = pcpu_nr_units * pcpu_unit_pages * sizeof(pages[0]);
 size_t bitmap_size = BITS_TO_LONGS(pcpu_unit_pages) *
        sizeof(unsigned long);

 if (!pages || !bitmap) {
  if (may_alloc && !pages)
   pages = pcpu_mem_alloc(pages_size);
  if (may_alloc && !bitmap)
   bitmap = pcpu_mem_alloc(bitmap_size);
  if (!pages || !bitmap)
   return ((void*)0);
 }

 memset(pages, 0, pages_size);
 bitmap_copy(bitmap, chunk->populated, pcpu_unit_pages);

 *bitmapp = bitmap;
 return pages;
}
