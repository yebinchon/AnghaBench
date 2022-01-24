#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct alloc_zone {char* name; int was_collected; scalar_t__ allocated; scalar_t__ allocated_last_gc; struct alloc_chunk** free_chunks; } ;
struct alloc_chunk {struct alloc_chunk* next_free; scalar_t__ size; } ;

/* Variables and functions */
 int NUM_FREE_BINS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  quiet_flag ; 
 int /*<<< orphan*/  FUNC3 (struct alloc_zone*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (struct alloc_zone*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static bool
FUNC6 (struct alloc_zone *zone, bool need_marking)
{
#if 0
  /* */
  {
    int i;
    for (i = 0; i < NUM_FREE_BINS + 1; i++)
      {
	struct alloc_chunk *chunk;
	int n, tot;

	n = 0;
	tot = 0;
	chunk = zone->free_chunks[i];
	while (chunk)
	  {
	    n++;
	    tot += chunk->size;
	    chunk = chunk->next_free;
	  }
	fprintf (stderr, "Bin %d: %d free chunks (%d bytes)\n",
		 i, n, tot);
      }
  }
  /* */
#endif

  if (!quiet_flag)
    FUNC0 (stderr, " {%s GC %luk -> ",
	     zone->name, (unsigned long) zone->allocated / 1024);

  /* Zero the total allocated bytes.  This will be recalculated in the
     sweep phase.  */
  zone->allocated = 0;

  /* Release the pages we freed the last time we collected, but didn't
     reuse in the interim.  */
  FUNC3 (zone);

  if (need_marking)
    {
      FUNC5 ();
      FUNC1 ();
#ifdef GATHER_STATISTICS
      ggc_prune_overhead_list ();
#endif
    }
  
  FUNC4 (zone);
  zone->was_collected = true;
  zone->allocated_last_gc = zone->allocated;

  if (!quiet_flag)
    FUNC0 (stderr, "%luk}", (unsigned long) zone->allocated / 1024);
  return true;
}