#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int index_by_depth; scalar_t__ context_depth; struct TYPE_4__* next; scalar_t__ page; int /*<<< orphan*/  group; scalar_t__ bytes; } ;
typedef  TYPE_1__ page_entry ;
struct TYPE_5__ {int by_depth_in_use; TYPE_1__* free_pages; int /*<<< orphan*/ * save_in_use; TYPE_1__** by_depth; int /*<<< orphan*/  debug_file; } ;

/* Variables and functions */
 TYPE_3__ G ; 
 int GGC_DEBUG_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (page_entry *entry)
{
  if (GGC_DEBUG_LEVEL >= 2)
    FUNC4 (G.debug_file,
	     "Deallocating page at %p, data %ld-%ld\n", (void *) entry,
	     entry->page, entry->page + entry->bytes - 1);

  /* Mark the page as inaccessible.  Discard the handle to avoid handle
     leak.  */
  FUNC0 (FUNC1 (entry->page, entry->bytes));

  FUNC6 (entry->page, NULL);

#ifdef USING_MALLOC_PAGE_GROUPS
  clear_page_group_in_use (entry->group, entry->page);
#endif

  if (G.by_depth_in_use > 1)
    {
      page_entry *top = G.by_depth[G.by_depth_in_use-1];
      int i = entry->index_by_depth;

      /* We cannot free a page from a context deeper than the current
	 one.  */
      FUNC5 (entry->context_depth == top->context_depth);
      
      /* Put top element into freed slot.  */
      G.by_depth[i] = top;
      G.save_in_use[i] = G.save_in_use[G.by_depth_in_use-1];
      top->index_by_depth = i;
    }
  --G.by_depth_in_use;

  FUNC2 ();

  entry->next = G.free_pages;
  G.free_pages = entry;
}