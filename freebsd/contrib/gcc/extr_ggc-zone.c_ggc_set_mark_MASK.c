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
struct small_page_entry {int* mark_bits; } ;
struct page_entry {scalar_t__ large_p; scalar_t__ pch_p; } ;
struct large_page_entry {int mark_p; } ;
typedef  int /*<<< orphan*/  mark_type ;
struct TYPE_4__ {int /*<<< orphan*/  debug_file; } ;
struct TYPE_3__ {char const* page; int* mark_bits; } ;

/* Variables and functions */
 int BYTES_PER_MARK_BIT ; 
 TYPE_2__ G ; 
 int GGC_DEBUG_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void const*) ; 
 TYPE_1__ pch_zone ; 
 int FUNC1 (void const*) ; 
 size_t FUNC2 (void const*) ; 
 struct page_entry* FUNC3 (void const*) ; 

int
FUNC4 (const void *p)
{
  struct page_entry *page;
  const char *ptr = (const char *) p;

  page = FUNC3 (p);

  if (page->pch_p)
    {
      size_t mark_word, mark_bit, offset;
      offset = (ptr - pch_zone.page) / BYTES_PER_MARK_BIT;
      mark_word = offset / (8 * sizeof (mark_type));
      mark_bit = offset % (8 * sizeof (mark_type));
      
      if (pch_zone.mark_bits[mark_word] & (1 << mark_bit))
	return 1;
      pch_zone.mark_bits[mark_word] |= (1 << mark_bit);
    }
  else if (page->large_p)
    {
      struct large_page_entry *large_page
	= (struct large_page_entry *) page;

      if (large_page->mark_p)
	return 1;
      large_page->mark_p = true;
    }
  else
    {
      struct small_page_entry *small_page
	= (struct small_page_entry *) page;

      if (small_page->mark_bits[FUNC2 (p)]
	  & (1 << FUNC1 (p)))
	return 1;
      small_page->mark_bits[FUNC2 (p)]
	|= (1 << FUNC1 (p));
    }

  if (GGC_DEBUG_LEVEL >= 4)
    FUNC0 (G.debug_file, "Marking %p\n", p);

  return 0;
}