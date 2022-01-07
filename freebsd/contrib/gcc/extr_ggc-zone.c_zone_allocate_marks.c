
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct small_page_entry {int * mark_bits; struct small_page_entry* next; } ;
struct alloc_zone {size_t n_small_pages; struct small_page_entry* pages; int * mark_bits; struct alloc_zone* next_zone; } ;
typedef int mark_type ;
struct TYPE_4__ {struct alloc_zone* zones; } ;
struct TYPE_3__ {scalar_t__ bytes; int * mark_bits; } ;


 int BYTES_PER_MARK_WORD ;
 size_t CEIL (scalar_t__,int) ;
 TYPE_2__ G ;
 int GGC_PAGE_SIZE ;
 int gcc_assert (int) ;
 TYPE_1__ pch_zone ;
 scalar_t__ xcalloc (int,size_t) ;

__attribute__((used)) static void
zone_allocate_marks (void)
{
  struct alloc_zone *zone;

  for (zone = G.zones; zone; zone = zone->next_zone)
    {
      struct small_page_entry *page;
      mark_type *cur_marks;
      size_t mark_words, mark_words_per_page;




      mark_words_per_page
 = (GGC_PAGE_SIZE + BYTES_PER_MARK_WORD - 1) / BYTES_PER_MARK_WORD;
      mark_words = zone->n_small_pages * mark_words_per_page;
      zone->mark_bits = (mark_type *) xcalloc (sizeof (mark_type),
         mark_words);
      cur_marks = zone->mark_bits;
      for (page = zone->pages; page; page = page->next)
 {
   page->mark_bits = cur_marks;
   cur_marks += mark_words_per_page;



 }



    }



  if (pch_zone.bytes)
    pch_zone.mark_bits
      = (mark_type *) xcalloc (sizeof (mark_type),
          CEIL (pch_zone.bytes, BYTES_PER_MARK_WORD));
}
