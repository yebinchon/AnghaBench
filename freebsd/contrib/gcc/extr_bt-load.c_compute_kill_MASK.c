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
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int NUM_FIXED_BLOCKS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  all_btrs ; 
 int first_btr ; 
 int last_btr ; 
 int n_basic_blocks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3 (sbitmap *bb_kill, sbitmap *btr_defset,
	      HARD_REG_SET *btrs_written)
{
  int i;
  int regno;

  /* For each basic block, form the set BB_KILL - the set
     of definitions that the block kills.  */
  FUNC2 (bb_kill, n_basic_blocks);
  for (i = NUM_FIXED_BLOCKS; i < n_basic_blocks; i++)
    {
      for (regno = first_btr; regno <= last_btr; regno++)
	if (FUNC0 (all_btrs, regno)
	    && FUNC0 (btrs_written[i], regno))
	  FUNC1 (bb_kill[i], bb_kill[i],
			  btr_defset[regno - first_btr]);
    }
}