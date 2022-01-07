
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct small_page_entry {int dummy; } ;
struct page_entry {scalar_t__ large_p; scalar_t__ pch_p; } ;
struct large_page_entry {size_t bytes; } ;
typedef int alloc_type ;
struct TYPE_2__ {char const* page; int bytes; int alloc_bits; } ;


 int BYTES_PER_ALLOC_BIT ;
 TYPE_1__ pch_zone ;
 size_t zone_find_object_size (struct small_page_entry*,void const*) ;
 struct page_entry* zone_get_object_page (void const*) ;
 size_t zone_object_size_1 (int ,size_t,size_t,size_t) ;

size_t
ggc_get_size (const void *p)
{
  struct page_entry *page;
  const char *ptr = (const char *) p;

  page = zone_get_object_page (p);

  if (page->pch_p)
    {
      size_t alloc_word, alloc_bit, offset, max_size;
      offset = (ptr - pch_zone.page) / BYTES_PER_ALLOC_BIT + 1;
      alloc_word = offset / (8 * sizeof (alloc_type));
      alloc_bit = offset % (8 * sizeof (alloc_type));
      max_size = pch_zone.bytes - (ptr - pch_zone.page);
      return zone_object_size_1 (pch_zone.alloc_bits, alloc_word, alloc_bit,
     max_size);
    }

  if (page->large_p)
    return ((struct large_page_entry *)page)->bytes;
  else
    return zone_find_object_size ((struct small_page_entry *) page, p);
}
