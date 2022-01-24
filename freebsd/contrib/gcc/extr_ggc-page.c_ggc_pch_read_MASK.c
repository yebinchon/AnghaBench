#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page_entry {int context_depth; size_t bytes; char* page; unsigned int order; int* in_use_p; struct page_entry* next; scalar_t__ num_free_objects; } ;
struct ggc_pch_ondisk {size_t* totals; } ;
typedef  struct page_entry page_entry ;
typedef  int /*<<< orphan*/  d ;
struct TYPE_2__ {unsigned long by_depth_in_use; int context_depth; int allocated; int allocated_last_gc; struct page_entry** page_tails; struct page_entry** pages; int /*<<< orphan*/  pagesize; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 TYPE_1__ G ; 
 size_t HOST_BITS_PER_LONG ; 
 unsigned int NUM_ORDERS ; 
 size_t FUNC1 (unsigned int) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct ggc_pch_ondisk*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct page_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct page_entry*) ; 
 struct page_entry* FUNC11 (int,scalar_t__) ; 

void
FUNC12 (FILE *f, void *addr)
{
  struct ggc_pch_ondisk d;
  unsigned i;
  char *offs = addr;
  unsigned long count_old_page_tables;
  unsigned long count_new_page_tables;

  count_old_page_tables = G.by_depth_in_use;

  /* We've just read in a PCH file.  So, every object that used to be
     allocated is now free.  */
  FUNC3 ();
#ifdef ENABLE_GC_CHECKING
  poison_pages ();
#endif

  /* No object read from a PCH file should ever be freed.  So, set the
     context depth to 1, and set the depth of all the currently-allocated
     pages to be 1 too.  PCH pages will have depth 0.  */
  FUNC6 (!G.context_depth);
  G.context_depth = 1;
  for (i = 0; i < NUM_ORDERS; i++)
    {
      page_entry *p;
      for (p = G.pages[i]; p != NULL; p = p->next)
	p->context_depth = G.context_depth;
    }

  /* Allocate the appropriate page-table entries for the pages read from
     the PCH file.  */
  if (FUNC5 (&d, sizeof (d), 1, f) != 1)
    FUNC4 ("can't read PCH file: %m");

  for (i = 0; i < NUM_ORDERS; i++)
    {
      struct page_entry *entry;
      char *pte;
      size_t bytes;
      size_t num_objs;
      size_t j;

      if (d.totals[i] == 0)
	continue;

      bytes = FUNC2 (d.totals[i] * FUNC1 (i), G.pagesize);
      num_objs = bytes / FUNC1 (i);
      entry = FUNC11 (1, (sizeof (struct page_entry)
			   - sizeof (long)
			   + FUNC0 (num_objs + 1)));
      entry->bytes = bytes;
      entry->page = offs;
      entry->context_depth = 0;
      offs += bytes;
      entry->num_free_objects = 0;
      entry->order = i;

      for (j = 0;
	   j + HOST_BITS_PER_LONG <= num_objs + 1;
	   j += HOST_BITS_PER_LONG)
	entry->in_use_p[j / HOST_BITS_PER_LONG] = -1;
      for (; j < num_objs + 1; j++)
	entry->in_use_p[j / HOST_BITS_PER_LONG]
	  |= 1L << (j % HOST_BITS_PER_LONG);

      for (pte = entry->page;
	   pte < entry->page + entry->bytes;
	   pte += G.pagesize)
	FUNC10 (pte, entry);

      if (G.page_tails[i] != NULL)
	G.page_tails[i]->next = entry;
      else
	G.pages[i] = entry;
      G.page_tails[i] = entry;

      /* We start off by just adding all the new information to the
	 end of the varrays, later, we will move the new information
	 to the front of the varrays, as the PCH page tables are at
	 context 0.  */
      FUNC9 (entry, 0);
    }

  /* Now, we update the various data structures that speed page table
     handling.  */
  count_new_page_tables = G.by_depth_in_use - count_old_page_tables;

  FUNC7 (count_old_page_tables, count_new_page_tables);

  /* Update the statistics.  */
  G.allocated = G.allocated_last_gc = offs - (char *)addr;
}