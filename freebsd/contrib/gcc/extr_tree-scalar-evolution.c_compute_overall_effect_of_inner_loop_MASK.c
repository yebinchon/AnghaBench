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
typedef  scalar_t__ tree ;
struct loop {scalar_t__ num; } ;
struct TYPE_2__ {struct loop** parray; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 TYPE_1__* current_loops ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int*) ; 
 scalar_t__ FUNC7 (struct loop*) ; 

__attribute__((used)) static tree 
FUNC8 (struct loop *loop, tree evolution_fn)
{
  bool val = false;

  if (evolution_fn == chrec_dont_know)
    return chrec_dont_know;

  else if (FUNC1 (evolution_fn) == POLYNOMIAL_CHREC)
    {
      if (FUNC0 (evolution_fn) >= (unsigned) loop->num)
	{
	  struct loop *inner_loop = 
	    current_loops->parray[FUNC0 (evolution_fn)];
	  tree nb_iter = FUNC7 (inner_loop);

	  if (nb_iter == chrec_dont_know)
	    return chrec_dont_know;
	  else
	    {
	      tree res;
	      tree type = FUNC5 (nb_iter);

	      /* Number of iterations is off by one (the ssa name we
		 analyze must be defined before the exit).  */
	      nb_iter = FUNC4 (type, nb_iter,
					  FUNC2 (type, 1));
	      
	      /* evolution_fn is the evolution function in LOOP.  Get
		 its value in the nb_iter-th iteration.  */
	      res = FUNC3 (inner_loop->num, evolution_fn, nb_iter);
	      
	      /* Continue the computation until ending on a parent of LOOP.  */
	      return FUNC8 (loop, res);
	    }
	}
      else
	return evolution_fn;
     }
  
  /* If the evolution function is an invariant, there is nothing to do.  */
  else if (FUNC6 (evolution_fn, loop->num, &val) && val)
    return evolution_fn;
  
  else
    return chrec_dont_know;
}