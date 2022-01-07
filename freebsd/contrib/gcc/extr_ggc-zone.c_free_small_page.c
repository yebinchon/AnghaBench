
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* zone; scalar_t__ page; int large_p; } ;
struct small_page_entry {TYPE_2__ common; struct small_page_entry* next; } ;
struct TYPE_6__ {int debug_file; } ;
struct TYPE_4__ {char* name; int n_small_pages; struct small_page_entry* free_pages; } ;
typedef int PTR ;


 TYPE_3__ G ;
 int GGC_DEBUG_LEVEL ;
 scalar_t__ SMALL_PAGE_SIZE ;
 int VALGRIND_DISCARD (int ) ;
 int VALGRIND_MAKE_NOACCESS (scalar_t__,scalar_t__) ;
 int fprintf (int ,char*,char*,int ,scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;

__attribute__((used)) static inline void
free_small_page (struct small_page_entry *entry)
{
  if (GGC_DEBUG_LEVEL >= 2)
    fprintf (G.debug_file,
      "Deallocating %s page at %p, data %p-%p\n",
      entry->common.zone->name, (PTR) entry,
      entry->common.page, entry->common.page + SMALL_PAGE_SIZE - 1);

  gcc_assert (!entry->common.large_p);



  VALGRIND_DISCARD (VALGRIND_MAKE_NOACCESS (entry->common.page,
         SMALL_PAGE_SIZE));

  entry->next = entry->common.zone->free_pages;
  entry->common.zone->free_pages = entry;
  entry->common.zone->n_small_pages--;
}
