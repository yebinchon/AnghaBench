
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page_entry {size_t bytes; char* page; unsigned int order; unsigned long context_depth; size_t num_free_objects; int next_bit_hint; unsigned long* in_use_p; TYPE_1__* group; struct page_entry* next; } ;
struct TYPE_4__ {char* allocation; size_t alloc_size; scalar_t__ in_use; struct TYPE_4__* next; } ;
typedef TYPE_1__ page_group ;
typedef int page_entry ;
struct TYPE_5__ {size_t pagesize; int lg_pagesize; size_t bytes_mapped; unsigned long context_depth; unsigned long context_depth_allocations; int debug_file; struct page_entry* free_pages; TYPE_1__* page_groups; } ;


 size_t BITMAP_SIZE (size_t) ;
 TYPE_3__ G ;
 int GGC_DEBUG_LEVEL ;
 int GGC_QUIRE_SIZE ;
 size_t HOST_BITS_PER_LONG ;
 size_t OBJECTS_PER_PAGE (unsigned int) ;
 size_t OBJECT_SIZE (unsigned int) ;
 char* alloc_anon (int *,size_t) ;
 int fprintf (int ,char*,void*,unsigned long,char*,char*) ;
 int free (struct page_entry*) ;
 int gcc_assert (int) ;
 int memset (struct page_entry*,int ,size_t) ;
 int set_page_group_in_use (TYPE_1__*,char*) ;
 int set_page_table_entry (char*,struct page_entry*) ;
 struct page_entry* xcalloc (int,size_t) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static inline struct page_entry *
alloc_page (unsigned order)
{
  struct page_entry *entry, *p, **pp;
  char *page;
  size_t num_objects;
  size_t bitmap_size;
  size_t page_entry_size;
  size_t entry_size;




  num_objects = OBJECTS_PER_PAGE (order);
  bitmap_size = BITMAP_SIZE (num_objects + 1);
  page_entry_size = sizeof (page_entry) - sizeof (long) + bitmap_size;
  entry_size = num_objects * OBJECT_SIZE (order);
  if (entry_size < G.pagesize)
    entry_size = G.pagesize;

  entry = ((void*)0);
  page = ((void*)0);


  for (pp = &G.free_pages, p = *pp; p; pp = &p->next, p = *pp)
    if (p->bytes == entry_size)
      break;

  if (p != ((void*)0))
    {

      *pp = p->next;
      page = p->page;






      if (p->order == order)
 {
   entry = p;
   memset (entry, 0, page_entry_size);
 }
      else
 free (p);
    }
  if (entry == ((void*)0))
    entry = xcalloc (1, page_entry_size);

  entry->bytes = entry_size;
  entry->page = page;
  entry->context_depth = G.context_depth;
  entry->order = order;
  entry->num_free_objects = num_objects;
  entry->next_bit_hint = 1;

  G.context_depth_allocations |= (unsigned long)1 << G.context_depth;
  entry->in_use_p[num_objects / HOST_BITS_PER_LONG]
    = (unsigned long) 1 << (num_objects % HOST_BITS_PER_LONG);

  set_page_table_entry (page, entry);

  if (GGC_DEBUG_LEVEL >= 2)
    fprintf (G.debug_file,
      "Allocating page at %p, object size=%lu, data %p-%p\n",
      (void *) entry, (unsigned long) OBJECT_SIZE (order), page,
      page + entry_size - 1);

  return entry;
}
