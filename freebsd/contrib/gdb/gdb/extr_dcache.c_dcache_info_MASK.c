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
struct dcache_block {int* data; int /*<<< orphan*/ * state; int /*<<< orphan*/  refs; int /*<<< orphan*/  addr; struct dcache_block* p; } ;
struct TYPE_2__ {struct dcache_block* valid_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_SIZE ; 
 int LINE_SIZE ; 
 TYPE_1__* last_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2 (char *exp, int tty)
{
  struct dcache_block *p;

  FUNC1 ("Dcache line width %d, depth %d\n",
		   LINE_SIZE, DCACHE_SIZE);

  if (last_cache)
    {
      FUNC1 ("Cache state:\n");

      for (p = last_cache->valid_head; p; p = p->p)
	{
	  int j;
	  FUNC1 ("Line at %s, referenced %d times\n",
			   FUNC0 (p->addr), p->refs);

	  for (j = 0; j < LINE_SIZE; j++)
	    FUNC1 ("%02x", p->data[j] & 0xFF);
	  FUNC1 ("\n");

	  for (j = 0; j < LINE_SIZE; j++)
	    FUNC1 ("%2x", p->state[j]);
	  FUNC1 ("\n");
	}
    }
}