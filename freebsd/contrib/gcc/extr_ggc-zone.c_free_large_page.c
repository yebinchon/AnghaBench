
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ page; int large_p; TYPE_1__* zone; } ;
struct large_page_entry {TYPE_2__ common; } ;
struct TYPE_6__ {int debug_file; } ;
struct TYPE_4__ {char* name; } ;
typedef int PTR ;


 TYPE_3__ G ;
 int GGC_DEBUG_LEVEL ;
 scalar_t__ SMALL_PAGE_SIZE ;
 int fprintf (int ,char*,char*,int ,scalar_t__,scalar_t__) ;
 int free (struct large_page_entry*) ;
 int gcc_assert (int ) ;
 int set_page_table_entry (scalar_t__,int *) ;

__attribute__((used)) static inline void
free_large_page (struct large_page_entry *entry)
{
  if (GGC_DEBUG_LEVEL >= 2)
    fprintf (G.debug_file,
      "Deallocating %s page at %p, data %p-%p\n",
      entry->common.zone->name, (PTR) entry,
      entry->common.page, entry->common.page + SMALL_PAGE_SIZE - 1);

  gcc_assert (entry->common.large_p);

  set_page_table_entry (entry->common.page, ((void*)0));
  free (entry);
}
