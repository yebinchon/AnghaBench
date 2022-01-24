#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int page; unsigned long* in_use_p; int /*<<< orphan*/  order; } ;
typedef  TYPE_1__ page_entry ;

/* Variables and functions */
 unsigned int HOST_BITS_PER_LONG ; 
 unsigned int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (void const*) ; 

int
FUNC3 (const void *p)
{
  page_entry *entry;
  unsigned bit, word;
  unsigned long mask;

  /* Look up the page on which the object is alloced.  If the object
     wasn't allocated by the collector, we'll probably die.  */
  entry = FUNC2 (p);
  FUNC1 (entry);

  /* Calculate the index of the object on the page; this is its bit
     position in the in_use_p bitmap.  */
  bit = FUNC0 (((const char *) p) - entry->page, entry->order);
  word = bit / HOST_BITS_PER_LONG;
  mask = (unsigned long) 1 << (bit % HOST_BITS_PER_LONG);

  return (entry->in_use_p[word] & mask) != 0;
}