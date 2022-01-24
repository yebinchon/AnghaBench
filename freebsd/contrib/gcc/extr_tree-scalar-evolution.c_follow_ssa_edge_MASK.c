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
typedef  int /*<<< orphan*/  t_bool ;
struct loop {int dummy; } ;

/* Variables and functions */
#define  MODIFY_EXPR 129 
 int NOP_EXPR ; 
 int /*<<< orphan*/  PARAM_SCEV_MAX_EXPR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PHI_NODE 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct loop*,struct loop*) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct loop* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  t_dont_know ; 
 int /*<<< orphan*/  t_false ; 
 int /*<<< orphan*/  t_true ; 

__attribute__((used)) static t_bool
FUNC9 (struct loop *loop, tree def, tree halting_phi,
		 tree *evolution_of_loop, int limit)
{
  struct loop *def_loop;
  
  if (FUNC1 (def) == NOP_EXPR)
    return t_false;
  
  /* Give up if the path is longer than the MAX that we allow.  */
  if (limit++ > FUNC0 (PARAM_SCEV_MAX_EXPR_SIZE))
    return t_dont_know;
  
  def_loop = FUNC7 (def);
  
  switch (FUNC1 (def))
    {
    case PHI_NODE:
      if (!FUNC8 (def))
	/* DEF is a condition-phi-node.  Follow the branches, and
	   record their evolutions.  Finally, merge the collected
	   information and set the approximation to the main
	   variable.  */
	return FUNC4 
	  (loop, def, halting_phi, evolution_of_loop, limit);

      /* When the analyzed phi is the halting_phi, the
	 depth-first search is over: we have found a path from
	 the halting_phi to itself in the loop.  */
      if (def == halting_phi)
	return t_true;
	  
      /* Otherwise, the evolution of the HALTING_PHI depends
	 on the evolution of another loop-phi-node, i.e. the
	 evolution function is a higher degree polynomial.  */
      if (def_loop == loop)
	return t_false;
	  
      /* Inner loop.  */
      if (FUNC3 (loop, def_loop))
	return FUNC6 
	  (loop, def, halting_phi, evolution_of_loop, limit);

      /* Outer loop.  */
      return t_false;

    case MODIFY_EXPR:
      return FUNC5 (loop, def,
				     FUNC2 (def, 1), 
				     halting_phi, 
				     evolution_of_loop, limit);
      
    default:
      /* At this level of abstraction, the program is just a set
	 of MODIFY_EXPRs and PHI_NODEs.  In principle there is no
	 other node to be handled.  */
      return t_false;
    }
}