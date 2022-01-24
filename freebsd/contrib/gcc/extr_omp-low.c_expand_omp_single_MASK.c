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
typedef  int /*<<< orphan*/  tree ;
struct omp_region {int /*<<< orphan*/  exit; int /*<<< orphan*/  entry; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {void* flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 void* EDGE_FALLTHRU ; 
 int /*<<< orphan*/  OMP_CLAUSE_COPYPRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OMP_SINGLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (struct omp_region *region)
{
  basic_block entry_bb, exit_bb;
  block_stmt_iterator si;
  bool need_barrier = false;

  entry_bb = region->entry;
  exit_bb = region->exit;

  si = FUNC5 (entry_bb);
  /* The terminal barrier at the end of a GOMP_single_copy sequence cannot
     be removed.  We need to ensure that the thread that entered the single
     does not exit before the data is copied out by the other threads.  */
  if (FUNC9 (FUNC1 (FUNC7 (si)),
		       OMP_CLAUSE_COPYPRIVATE))
    need_barrier = true;
  FUNC10 (FUNC2 (FUNC7 (si)) == OMP_SINGLE);
  FUNC6 (&si, true);
  FUNC11 (entry_bb)->flags = EDGE_FALLTHRU;

  si = FUNC5 (exit_bb);
  if (!FUNC0 (FUNC7 (si)) || need_barrier)
    {
      tree t = FUNC3 ();
      FUNC8 (&t);
      FUNC4 (&si, t, BSI_SAME_STMT);
    }
  FUNC6 (&si, true);
  FUNC11 (exit_bb)->flags = EDGE_FALLTHRU;
}