#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct small_page_entry {int /*<<< orphan*/  alloc_bits; struct small_page_entry* next; } ;
struct page_entry {char* page; int pch_p; } ;
struct large_page_entry {struct large_page_entry* next; } ;
struct ggc_pch_ondisk {int total; } ;
struct alloc_zone {struct large_page_entry* large_pages; struct small_page_entry* pages; scalar_t__ cached_free_size; int /*<<< orphan*/ * cached_free; scalar_t__ high_free_bin; int /*<<< orphan*/  free_chunks; scalar_t__ allocated; struct alloc_zone* next_zone; } ;
typedef  int /*<<< orphan*/  d ;
typedef  int /*<<< orphan*/  alloc_type ;
struct TYPE_4__ {int small_page_overhead; struct alloc_zone* zones; } ;
struct TYPE_3__ {int bytes; char* page; char* end; int /*<<< orphan*/ * alloc_bits; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BYTES_PER_ALLOC_BIT ; 
 size_t FUNC0 (int,int) ; 
 TYPE_2__ G ; 
 int /*<<< orphan*/  GGC_PAGE_SIZE ; 
 int /*<<< orphan*/  MAX_ALIGNMENT ; 
 int PAGE_OVERHEAD ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct ggc_pch_ondisk*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct large_page_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct small_page_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ pch_zone ; 
 int /*<<< orphan*/  FUNC7 (char*,struct page_entry*) ; 
 struct page_entry* FUNC8 (int,int) ; 

void
FUNC9 (FILE *f, void *addr)
{
  struct ggc_pch_ondisk d;
  size_t alloc_size;
  struct alloc_zone *zone;
  struct page_entry *pch_page;
  char *p;

  if (FUNC3 (&d, sizeof (d), 1, f) != 1)
    FUNC2 ("can't read PCH file: %m");

  alloc_size = FUNC0 (d.total, BYTES_PER_ALLOC_BIT * 8);
  alloc_size = FUNC1 (alloc_size, MAX_ALIGNMENT);

  pch_zone.bytes = d.total;
  pch_zone.alloc_bits = (alloc_type *) ((char *) addr + pch_zone.bytes);
  pch_zone.page = (char *) addr;
  pch_zone.end = (char *) pch_zone.alloc_bits;

  /* We've just read in a PCH file.  So, every object that used to be
     allocated is now free.  */
  for (zone = G.zones; zone; zone = zone->next_zone)
    {
      struct small_page_entry *page, *next_page;
      struct large_page_entry *large_page, *next_large_page;

      zone->allocated = 0;

      /* Clear the zone's free chunk list.  */
      FUNC6 (zone->free_chunks, 0, sizeof (zone->free_chunks));
      zone->high_free_bin = 0;
      zone->cached_free = NULL;
      zone->cached_free_size = 0;

      /* Move all the small pages onto the free list.  */
      for (page = zone->pages; page != NULL; page = next_page)
	{
	  next_page = page->next;
	  FUNC6 (page->alloc_bits, 0,
		  G.small_page_overhead - PAGE_OVERHEAD);
	  FUNC5 (page);
	}

      /* Discard all the large pages.  */
      for (large_page = zone->large_pages; large_page != NULL;
	   large_page = next_large_page)
	{
	  next_large_page = large_page->next;
	  FUNC4 (large_page);
	}

      zone->pages = NULL;
      zone->large_pages = NULL;
    }

  /* Allocate the dummy page entry for the PCH, and set all pages
     mapped into the PCH to reference it.  */
  pch_page = FUNC8 (1, sizeof (struct page_entry));
  pch_page->page = pch_zone.page;
  pch_page->pch_p = true;

  for (p = pch_zone.page; p < pch_zone.end; p += GGC_PAGE_SIZE)
    FUNC7 (p, pch_page);
}