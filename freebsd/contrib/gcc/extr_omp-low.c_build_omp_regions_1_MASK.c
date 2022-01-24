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
typedef  int /*<<< orphan*/  tree ;
struct omp_region {scalar_t__ type; void* cont; struct omp_region* outer; void* exit; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  void* basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int OMP_CONTINUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OMP_PARALLEL ; 
 int OMP_RETURN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omp_region*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct omp_region*) ; 
 struct omp_region* FUNC8 (void*,int,struct omp_region*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC10 (basic_block bb, struct omp_region *parent)
{
  block_stmt_iterator si;
  tree stmt;
  basic_block son;

  si = FUNC3 (bb);
  if (!FUNC2 (si) && FUNC0 (FUNC4 (si)))
    {
      struct omp_region *region;
      enum tree_code code;

      stmt = FUNC4 (si);
      code = FUNC1 (stmt);

      if (code == OMP_RETURN)
	{
	  /* STMT is the return point out of region PARENT.  Mark it
	     as the exit point and make PARENT the immediately
	     enclosing region.  */
	  FUNC7 (parent);
	  region = parent;
	  region->exit = bb;
	  parent = parent->outer;

	  /* If REGION is a parallel region, determine whether it is
	     a combined parallel+workshare region.  */
	  if (region->type == OMP_PARALLEL)
	    FUNC5 (region);
	}
      else if (code == OMP_CONTINUE)
	{
	  FUNC7 (parent);
	  parent->cont = bb;
	}
      else
	{
	  /* Otherwise, this directive becomes the parent for a new
	     region.  */
	  region = FUNC8 (bb, code, parent);
	  parent = region;
	}
    }

  for (son = FUNC6 (CDI_DOMINATORS, bb);
       son;
       son = FUNC9 (CDI_DOMINATORS, son))
    FUNC10 (son, parent);
}