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
struct omp_region {int sched_kind; scalar_t__ exit; scalar_t__ cont; int /*<<< orphan*/  entry; } ;
struct omp_for_data {int sched_kind; int have_ordered; int /*<<< orphan*/ * chunk_size; } ;

/* Variables and functions */
 int BUILT_IN_GOMP_LOOP_STATIC_NEXT ; 
 int BUILT_IN_GOMP_LOOP_STATIC_START ; 
 int OMP_CLAUSE_SCHEDULE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (struct omp_region*,struct omp_for_data*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct omp_region*,struct omp_for_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct omp_region*,struct omp_for_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct omp_for_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7 (struct omp_region *region)
{
  struct omp_for_data fd;

  FUNC6 ();

  FUNC3 (FUNC4 (region->entry), &fd);
  region->sched_kind = fd.sched_kind;

  if (fd.sched_kind == OMP_CLAUSE_SCHEDULE_STATIC
      && !fd.have_ordered
      && region->cont
      && region->exit)
    {
      if (fd.chunk_size == NULL)
	FUNC2 (region, &fd);
      else
	FUNC1 (region, &fd);
    }
  else
    {
      int fn_index = fd.sched_kind + fd.have_ordered * 4;
      int start_ix = BUILT_IN_GOMP_LOOP_STATIC_START + fn_index;
      int next_ix = BUILT_IN_GOMP_LOOP_STATIC_NEXT + fn_index;
      FUNC0 (region, &fd, start_ix, next_ix);
    }

  FUNC5 (NULL);
}