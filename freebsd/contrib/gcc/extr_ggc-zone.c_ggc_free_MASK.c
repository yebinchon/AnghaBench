#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page_entry {TYPE_4__* zone; scalar_t__ pch_p; scalar_t__ large_p; } ;
struct TYPE_7__ {TYPE_2__* zone; } ;
struct large_page_entry {scalar_t__ bytes; TYPE_3__ common; TYPE_1__* prev; struct large_page_entry* next; } ;
struct TYPE_8__ {size_t allocated; } ;
struct TYPE_6__ {int /*<<< orphan*/  allocated; struct large_page_entry* large_pages; } ;
struct TYPE_5__ {struct large_page_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct large_page_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 size_t FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 struct page_entry* FUNC6 (void*) ; 

void
FUNC7 (void *p)
{
  struct page_entry *page;

#ifdef GATHER_STATISTICS
  ggc_free_overhead (p);
#endif

  FUNC5 (p, FUNC4 (p));

  page = FUNC6 (p);

  if (page->large_p)
    {
      struct large_page_entry *large_page
	= (struct large_page_entry *) page;

      /* Remove the page from the linked list.  */
      if (large_page->prev)
	large_page->prev->next = large_page->next;
      else
	{
	  FUNC2 (large_page->common.zone->large_pages == large_page);
	  large_page->common.zone->large_pages = large_page->next;
	}
      if (large_page->next)
	large_page->next->prev = large_page->prev;

      large_page->common.zone->allocated -= large_page->bytes;

      /* Release the memory associated with this object.  */
      FUNC1 (large_page);
    }
  else if (page->pch_p)
    /* Don't do anything.  We won't allocate a new object from the
       PCH zone so there's no point in releasing anything.  */
    ;
  else
    {
      size_t size = FUNC4 (p);

      page->zone->allocated -= size;

      /* Add the chunk to the free list.  We don't bother with coalescing,
	 since we are likely to want a chunk of this size again.  */
      FUNC0 (p, size, page->zone);
    }
}