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
struct loops {unsigned int num; struct loop** parray; } ;
struct loop {int /*<<< orphan*/ * aux; } ;
typedef  int /*<<< orphan*/ * loop_vec_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REPORT_VECTORIZED_LOOPS ; 
 int /*<<< orphan*/  UNKNOWN_LOC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC6 (struct loop*) ; 
 int /*<<< orphan*/  vect_dump ; 
 int /*<<< orphan*/  vect_loop_location ; 
 unsigned int vect_loops_num ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct loops*) ; 
 int /*<<< orphan*/  vect_vnames_to_rename ; 

void
FUNC10 (struct loops *loops)
{
  unsigned int i;
  unsigned int num_vectorized_loops = 0;

  /* Fix the verbosity level if not defined explicitly by the user.  */
  FUNC8 ();

  /* Allocate the bitmap that records which virtual variables that 
     need to be renamed.  */
  vect_vnames_to_rename = FUNC0 (NULL);

  /*  ----------- Analyze loops. -----------  */

  /* If some loop was duplicated, it gets bigger number 
     than all previously defined loops. This fact allows us to run 
     only over initial loops skipping newly generated ones.  */
  vect_loops_num = loops->num;
  for (i = 1; i < vect_loops_num; i++)
    {
      loop_vec_info loop_vinfo;
      struct loop *loop = loops->parray[i];

      if (!loop)
        continue;

      vect_loop_location = FUNC4 (loop);
      loop_vinfo = FUNC6 (loop);
      loop->aux = loop_vinfo;

      if (!loop_vinfo || !FUNC2 (loop_vinfo))
	continue;

      FUNC9 (loop_vinfo, loops);
      num_vectorized_loops++;
    }
  vect_loop_location = UNKNOWN_LOC;

  if (FUNC7 (REPORT_VECTORIZED_LOOPS))
    FUNC5 (vect_dump, "vectorized %u loops in function.\n",
	     num_vectorized_loops);

  /*  ----------- Finalize. -----------  */

  FUNC1 (vect_vnames_to_rename);

  for (i = 1; i < vect_loops_num; i++)
    {
      struct loop *loop = loops->parray[i];
      loop_vec_info loop_vinfo;

      if (!loop)
	continue;
      loop_vinfo = loop->aux;
      FUNC3 (loop_vinfo);
      loop->aux = NULL;
    }
}