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
typedef  scalar_t__ tree ;
struct iv_cand {scalar_t__ incremented_at; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC5 (struct iv_cand *cand, tree stmt)
{
  basic_block cand_bb = FUNC0 (cand->incremented_at);
  basic_block stmt_bb = FUNC0 (stmt);
  block_stmt_iterator bsi;

  if (!FUNC4 (CDI_DOMINATORS, stmt_bb, cand_bb))
    return false;

  if (stmt_bb != cand_bb)
    return true;

  /* Scan the block from the end, since the original ivs are usually
     incremented at the end of the loop body.  */
  for (bsi = FUNC1 (stmt_bb); ; FUNC2 (&bsi))
    {
      if (FUNC3 (bsi) == cand->incremented_at)
	return false;
      if (FUNC3 (bsi) == stmt)
	return true;
    }
}