#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct tree_niter_desc {int /*<<< orphan*/  additional_info; int /*<<< orphan*/  may_be_zero; int /*<<< orphan*/  niter; } ;
struct loop {scalar_t__ estimated_nb_iterations; } ;
typedef  TYPE_1__* edge ;
struct TYPE_5__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  COND_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 TYPE_1__** FUNC6 (struct loop*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct loop*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct loop*,TYPE_1__*,struct tree_niter_desc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (struct loop *loop)
{
  edge *exits;
  tree niter, type;
  unsigned i, n_exits;
  struct tree_niter_desc niter_desc;

  /* Give up if we already have tried to compute an estimation.  */
  if (loop->estimated_nb_iterations == chrec_dont_know
      /* Or when we already have an estimation.  */
      || (loop->estimated_nb_iterations != NULL_TREE
	  && FUNC0 (loop->estimated_nb_iterations) == INTEGER_CST))
    return;
  else
    loop->estimated_nb_iterations = chrec_dont_know;

  exits = FUNC6 (loop, &n_exits);
  for (i = 0; i < n_exits; i++)
    {
      if (!FUNC10 (loop, exits[i], &niter_desc, false))
	continue;

      niter = niter_desc.niter;
      type = FUNC1 (niter);
      if (!FUNC12 (niter_desc.may_be_zero)
	  && !FUNC9 (niter_desc.may_be_zero))
	niter = FUNC2 (COND_EXPR, type, niter_desc.may_be_zero,
			FUNC3 (type, 0),
			niter);
      FUNC11 (loop, niter,
		       niter_desc.additional_info,
		       FUNC8 (exits[i]->src));
    }
  FUNC5 (exits);
  
  if (FUNC4 (loop->estimated_nb_iterations))
    FUNC7 (loop);
}