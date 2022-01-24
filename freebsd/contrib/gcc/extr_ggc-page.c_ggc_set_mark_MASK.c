#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int page; unsigned long* in_use_p; int num_free_objects; int /*<<< orphan*/  order; } ;
typedef  TYPE_1__ page_entry ;
struct TYPE_6__ {int /*<<< orphan*/  debug_file; } ;

/* Variables and functions */
 TYPE_4__ G ; 
 int GGC_DEBUG_LEVEL ; 
 unsigned int HOST_BITS_PER_LONG ; 
 unsigned int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (void const*) ; 

int
FUNC4 (const void *p)
{
  page_entry *entry;
  unsigned bit, word;
  unsigned long mask;

  /* Look up the page on which the object is alloced.  If the object
     wasn't allocated by the collector, we'll probably die.  */
  entry = FUNC3 (p);
  FUNC2 (entry);

  /* Calculate the index of the object on the page; this is its bit
     position in the in_use_p bitmap.  */
  bit = FUNC0 (((const char *) p) - entry->page, entry->order);
  word = bit / HOST_BITS_PER_LONG;
  mask = (unsigned long) 1 << (bit % HOST_BITS_PER_LONG);

  /* If the bit was previously set, skip it.  */
  if (entry->in_use_p[word] & mask)
    return 1;

  /* Otherwise set it, and decrement the free object count.  */
  entry->in_use_p[word] |= mask;
  entry->num_free_objects -= 1;

  if (GGC_DEBUG_LEVEL >= 4)
    FUNC1 (G.debug_file, "Marking %p\n", p);

  return 0;
}