
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int page; unsigned long* in_use_p; int num_free_objects; int order; } ;
typedef TYPE_1__ page_entry ;
struct TYPE_6__ {int debug_file; } ;


 TYPE_4__ G ;
 int GGC_DEBUG_LEVEL ;
 unsigned int HOST_BITS_PER_LONG ;
 unsigned int OFFSET_TO_BIT (char const*,int ) ;
 int fprintf (int ,char*,void const*) ;
 int gcc_assert (TYPE_1__*) ;
 TYPE_1__* lookup_page_table_entry (void const*) ;

int
ggc_set_mark (const void *p)
{
  page_entry *entry;
  unsigned bit, word;
  unsigned long mask;



  entry = lookup_page_table_entry (p);
  gcc_assert (entry);



  bit = OFFSET_TO_BIT (((const char *) p) - entry->page, entry->order);
  word = bit / HOST_BITS_PER_LONG;
  mask = (unsigned long) 1 << (bit % HOST_BITS_PER_LONG);


  if (entry->in_use_p[word] & mask)
    return 1;


  entry->in_use_p[word] |= mask;
  entry->num_free_objects -= 1;

  if (GGC_DEBUG_LEVEL >= 4)
    fprintf (G.debug_file, "Marking %p\n", p);

  return 0;
}
