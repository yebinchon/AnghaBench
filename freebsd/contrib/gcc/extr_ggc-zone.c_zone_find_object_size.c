
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* page; } ;
struct small_page_entry {int alloc_bits; TYPE_1__ common; } ;


 int BYTES_PER_ALLOC_BIT ;
 int SMALL_PAGE_SIZE ;
 unsigned int zone_get_object_alloc_bit (char const*) ;
 unsigned int zone_get_object_alloc_word (char const*) ;
 size_t zone_object_size_1 (int ,unsigned int,unsigned int,size_t) ;

__attribute__((used)) static inline size_t
zone_find_object_size (struct small_page_entry *page,
         const void *object)
{
  const char *object_midptr = (const char *) object + BYTES_PER_ALLOC_BIT;
  unsigned int start_word = zone_get_object_alloc_word (object_midptr);
  unsigned int start_bit = zone_get_object_alloc_bit (object_midptr);
  size_t max_size = (page->common.page + SMALL_PAGE_SIZE
       - (char *) object);

  return zone_object_size_1 (page->alloc_bits, start_word, start_bit,
        max_size);
}
