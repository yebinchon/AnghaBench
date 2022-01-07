
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index_by_depth; scalar_t__ context_depth; struct TYPE_4__* next; scalar_t__ page; int group; scalar_t__ bytes; } ;
typedef TYPE_1__ page_entry ;
struct TYPE_5__ {int by_depth_in_use; TYPE_1__* free_pages; int * save_in_use; TYPE_1__** by_depth; int debug_file; } ;


 TYPE_3__ G ;
 int GGC_DEBUG_LEVEL ;
 int VALGRIND_DISCARD (int ) ;
 int VALGRIND_MAKE_NOACCESS (scalar_t__,scalar_t__) ;
 int adjust_depth () ;
 int clear_page_group_in_use (int ,scalar_t__) ;
 int fprintf (int ,char*,void*,scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 int set_page_table_entry (scalar_t__,int *) ;

__attribute__((used)) static void
free_page (page_entry *entry)
{
  if (GGC_DEBUG_LEVEL >= 2)
    fprintf (G.debug_file,
      "Deallocating page at %p, data %p-%p\n", (void *) entry,
      entry->page, entry->page + entry->bytes - 1);



  VALGRIND_DISCARD (VALGRIND_MAKE_NOACCESS (entry->page, entry->bytes));

  set_page_table_entry (entry->page, ((void*)0));





  if (G.by_depth_in_use > 1)
    {
      page_entry *top = G.by_depth[G.by_depth_in_use-1];
      int i = entry->index_by_depth;



      gcc_assert (entry->context_depth == top->context_depth);


      G.by_depth[i] = top;
      G.save_in_use[i] = G.save_in_use[G.by_depth_in_use-1];
      top->index_by_depth = i;
    }
  --G.by_depth_in_use;

  adjust_depth ();

  entry->next = G.free_pages;
  G.free_pages = entry;
}
