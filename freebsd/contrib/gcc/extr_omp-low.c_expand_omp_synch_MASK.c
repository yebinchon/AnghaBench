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
struct omp_region {scalar_t__ exit; scalar_t__ entry; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  scalar_t__ basic_block ;
struct TYPE_2__ {void* flags; } ;

/* Variables and functions */
 void* EDGE_FALLTHRU ; 
 scalar_t__ OMP_CRITICAL ; 
 scalar_t__ OMP_MASTER ; 
 scalar_t__ OMP_ORDERED ; 
 scalar_t__ OMP_RETURN ; 
 scalar_t__ OMP_SINGLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (struct omp_region *region)
{
  basic_block entry_bb, exit_bb;
  block_stmt_iterator si;

  entry_bb = region->entry;
  exit_bb = region->exit;

  si = FUNC1 (entry_bb);
  FUNC4 (FUNC0 (FUNC3 (si)) == OMP_SINGLE
	      || FUNC0 (FUNC3 (si)) == OMP_MASTER
	      || FUNC0 (FUNC3 (si)) == OMP_ORDERED
	      || FUNC0 (FUNC3 (si)) == OMP_CRITICAL);
  FUNC2 (&si, true);
  FUNC5 (entry_bb)->flags = EDGE_FALLTHRU;

  if (exit_bb)
    {
      si = FUNC1 (exit_bb);
      FUNC4 (FUNC0 (FUNC3 (si)) == OMP_RETURN);
      FUNC2 (&si, true);
      FUNC5 (exit_bb)->flags = EDGE_FALLTHRU;
    }
}