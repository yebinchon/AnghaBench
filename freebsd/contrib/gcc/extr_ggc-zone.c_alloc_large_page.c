
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* page; int large_p; int pch_p; struct alloc_zone* zone; scalar_t__ survived; } ;
struct large_page_entry {int mark_p; size_t bytes; TYPE_1__ common; int * prev; int * next; } ;
struct alloc_zone {char* name; } ;
struct TYPE_4__ {int debug_file; } ;
typedef int PTR ;


 TYPE_2__ G ;
 int GGC_DEBUG_LEVEL ;
 int SMALL_PAGE_SIZE ;
 int fprintf (int ,char*,char*,int ,char*,char*) ;
 int set_page_table_entry (char*,TYPE_1__*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static struct large_page_entry *
alloc_large_page (size_t size, struct alloc_zone *zone)
{
  struct large_page_entry *entry;
  char *page;
  size_t needed_size;

  needed_size = size + sizeof (struct large_page_entry);
  page = xmalloc (needed_size);

  entry = (struct large_page_entry *) page;

  entry->next = ((void*)0);
  entry->common.page = page + sizeof (struct large_page_entry);
  entry->common.large_p = 1;
  entry->common.pch_p = 0;
  entry->common.zone = zone;



  entry->mark_p = 0;
  entry->bytes = size;
  entry->prev = ((void*)0);

  set_page_table_entry (entry->common.page, &entry->common);

  if (GGC_DEBUG_LEVEL >= 2)
    fprintf (G.debug_file,
      "Allocating %s large page at %p, data %p-%p\n",
      entry->common.zone->name, (PTR) entry, entry->common.page,
      entry->common.page + SMALL_PAGE_SIZE - 1);

  return entry;
}
