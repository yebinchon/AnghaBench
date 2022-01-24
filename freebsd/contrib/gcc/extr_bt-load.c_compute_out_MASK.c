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
typedef  int /*<<< orphan*/  sbitmap ;

/* Variables and functions */
 int NUM_FIXED_BLOCKS ; 
 int n_basic_blocks ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5 (sbitmap *bb_out, sbitmap *bb_gen, sbitmap *bb_kill, int max_uid)
{
  /* Perform iterative dataflow:
      Initially, for all blocks, BB_OUT = BB_GEN.
      For each block,
	BB_IN  = union over predecessors of BB_OUT(pred)
	BB_OUT = (BB_IN - BB_KILL) + BB_GEN
     Iterate until the bb_out sets stop growing.  */
  int i;
  int changed;
  sbitmap bb_in = FUNC0 (max_uid);

  for (i = NUM_FIXED_BLOCKS; i < n_basic_blocks; i++)
    FUNC1 (bb_out[i], bb_gen[i]);

  changed = 1;
  while (changed)
    {
      changed = 0;
      for (i = NUM_FIXED_BLOCKS; i < n_basic_blocks; i++)
	{
	  FUNC4 (bb_in, bb_out, i);
	  changed |= FUNC3 (bb_out[i], bb_gen[i],
					       bb_in, bb_kill[i]);
	}
    }
  FUNC2 (bb_in);
}