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
struct TYPE_2__ {float allocated_last_gc; float allocated; unsigned long context_depth_collections; int context_depth; int /*<<< orphan*/  debug_file; } ;

/* Variables and functions */
 TYPE_1__ G ; 
 int GGC_DEBUG_LEVEL ; 
 int /*<<< orphan*/  GGC_MIN_EXPAND ; 
 int /*<<< orphan*/  GGC_MIN_HEAPSIZE ; 
 float FUNC0 (float,size_t) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TV_GC ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ggc_force_collect ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  quiet_flag ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

void
FUNC12 (void)
{
  /* Avoid frequent unnecessary work by skipping collection if the
     total allocations haven't expanded much since the last
     collection.  */
  float allocated_last_gc =
    FUNC0 (G.allocated_last_gc, (size_t)FUNC1 (GGC_MIN_HEAPSIZE) * 1024);

  float min_expand = allocated_last_gc * FUNC1 (GGC_MIN_EXPAND) / 100;

  if (G.allocated < allocated_last_gc + min_expand && !ggc_force_collect)
    return;

  FUNC10 (TV_GC);
  if (!quiet_flag)
    FUNC3 (stderr, " {GC %luk -> ", (unsigned long) G.allocated / 1024);
  if (GGC_DEBUG_LEVEL >= 2)
    FUNC3 (G.debug_file, "BEGIN COLLECTING\n");

  /* Zero the total allocated bytes.  This will be recalculated in the
     sweep phase.  */
  G.allocated = 0;

  /* Release the pages we freed the last time we collected, but didn't
     reuse in the interim.  */
  FUNC7 ();

  /* Indicate that we've seen collections at this context depth.  */
  G.context_depth_collections = ((unsigned long)1 << (G.context_depth + 1)) - 1;

  FUNC2 ();
  FUNC4 ();
#ifdef GATHER_STATISTICS
  ggc_prune_overhead_list ();
#endif
  FUNC6 ();
  FUNC11 ();
  FUNC8 ();

  G.allocated_last_gc = G.allocated;

  FUNC9 (TV_GC);

  if (!quiet_flag)
    FUNC3 (stderr, "%luk}", (unsigned long) G.allocated / 1024);
  if (GGC_DEBUG_LEVEL >= 2)
    FUNC3 (G.debug_file, "END COLLECTING\n");
}