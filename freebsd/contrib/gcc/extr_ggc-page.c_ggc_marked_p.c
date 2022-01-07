
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int page; unsigned long* in_use_p; int order; } ;
typedef TYPE_1__ page_entry ;


 unsigned int HOST_BITS_PER_LONG ;
 unsigned int OFFSET_TO_BIT (char const*,int ) ;
 int gcc_assert (TYPE_1__*) ;
 TYPE_1__* lookup_page_table_entry (void const*) ;

int
ggc_marked_p (const void *p)
{
  page_entry *entry;
  unsigned bit, word;
  unsigned long mask;



  entry = lookup_page_table_entry (p);
  gcc_assert (entry);



  bit = OFFSET_TO_BIT (((const char *) p) - entry->page, entry->order);
  word = bit / HOST_BITS_PER_LONG;
  mask = (unsigned long) 1 << (bit % HOST_BITS_PER_LONG);

  return (entry->in_use_p[word] & mask) != 0;
}
