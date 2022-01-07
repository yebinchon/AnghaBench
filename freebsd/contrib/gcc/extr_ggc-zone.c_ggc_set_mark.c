
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct small_page_entry {int* mark_bits; } ;
struct page_entry {scalar_t__ large_p; scalar_t__ pch_p; } ;
struct large_page_entry {int mark_p; } ;
typedef int mark_type ;
struct TYPE_4__ {int debug_file; } ;
struct TYPE_3__ {char const* page; int* mark_bits; } ;


 int BYTES_PER_MARK_BIT ;
 TYPE_2__ G ;
 int GGC_DEBUG_LEVEL ;
 int fprintf (int ,char*,void const*) ;
 TYPE_1__ pch_zone ;
 int zone_get_object_mark_bit (void const*) ;
 size_t zone_get_object_mark_word (void const*) ;
 struct page_entry* zone_get_object_page (void const*) ;

int
ggc_set_mark (const void *p)
{
  struct page_entry *page;
  const char *ptr = (const char *) p;

  page = zone_get_object_page (p);

  if (page->pch_p)
    {
      size_t mark_word, mark_bit, offset;
      offset = (ptr - pch_zone.page) / BYTES_PER_MARK_BIT;
      mark_word = offset / (8 * sizeof (mark_type));
      mark_bit = offset % (8 * sizeof (mark_type));

      if (pch_zone.mark_bits[mark_word] & (1 << mark_bit))
 return 1;
      pch_zone.mark_bits[mark_word] |= (1 << mark_bit);
    }
  else if (page->large_p)
    {
      struct large_page_entry *large_page
 = (struct large_page_entry *) page;

      if (large_page->mark_p)
 return 1;
      large_page->mark_p = 1;
    }
  else
    {
      struct small_page_entry *small_page
 = (struct small_page_entry *) page;

      if (small_page->mark_bits[zone_get_object_mark_word (p)]
   & (1 << zone_get_object_mark_bit (p)))
 return 1;
      small_page->mark_bits[zone_get_object_mark_word (p)]
 |= (1 << zone_get_object_mark_bit (p));
    }

  if (GGC_DEBUG_LEVEL >= 4)
    fprintf (G.debug_file, "Marking %p\n", p);

  return 0;
}
