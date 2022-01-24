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
struct object_size_info {int* depths; unsigned int* tos; unsigned int* stack; size_t object_size_type; int /*<<< orphan*/  reexamine; } ;

/* Variables and functions */
 int CALL_EXPR ; 
 int INTEGER_CST ; 
#define  MODIFY_EXPR 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
#define  PHI_NODE 129 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PLUS_EXPR ; 
#define  RETURN_EXPR 128 
 int SSA_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * computed ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__** object_sizes ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (struct object_size_info *osi, tree var,
			   unsigned int depth)
{
  tree stmt = FUNC2 (var);
  unsigned int varno = FUNC3 (var);

  if (osi->depths[varno])
    {
      if (osi->depths[varno] != depth)
	{
	  unsigned int *sp;

	  /* Found a loop involving pointer addition.  */
	  for (sp = osi->tos; sp > osi->stack; )
	    {
	      --sp;
	      FUNC8 (osi->reexamine, *sp);
	      FUNC9 (computed[osi->object_size_type], *sp);
	      object_sizes[osi->object_size_type][*sp] = 0;
	      if (*sp == varno)
		break;
	    }
	}
      return;
    }
  else if (! FUNC7 (osi->reexamine, varno))
    return;

  osi->depths[varno] = depth;
  *osi->tos++ = varno;

  switch (FUNC5 (stmt))
    {
    case RETURN_EXPR:
      FUNC10 (FUNC5 (FUNC6 (stmt, 0)) == MODIFY_EXPR);
      stmt = FUNC6 (stmt, 0);
      /* FALLTHRU  */

    case MODIFY_EXPR:
      {
	tree rhs = FUNC6 (stmt, 1), arg;
	FUNC4 (rhs);

	if (FUNC5 (rhs) == CALL_EXPR)
	  {
	    arg = FUNC13 (rhs);
	    if (arg)
	      rhs = arg;
	  }

	if (FUNC5 (rhs) == SSA_NAME)
	  FUNC14 (osi, rhs, depth);
	else if (FUNC5 (rhs) == PLUS_EXPR)
	  {
	    tree op0 = FUNC6 (rhs, 0);
	    tree op1 = FUNC6 (rhs, 1);
	    tree cst, basevar;

	    if (FUNC5 (op0) == SSA_NAME)
	      {
		basevar = op0;
		cst = op1;
	      }
	    else
	      {
		basevar = op1;
		cst = op0;
		FUNC10 (FUNC5 (basevar) == SSA_NAME);
	      }
	    FUNC10 (FUNC5 (cst) == INTEGER_CST);

	    FUNC14 (osi, basevar,
				       depth + !FUNC12 (cst));
	  }
	else
	  FUNC11 ();
	break;
      }
    case PHI_NODE:
      {
	int i;

	for (i = 0; i < FUNC1 (stmt); i++)
	  {
	    tree rhs = FUNC0 (stmt, i);

	    if (FUNC5 (rhs) == SSA_NAME)
	      FUNC14 (osi, rhs, depth);
	  }
	break;
      }
    default:
      FUNC11 ();
    }

  osi->depths[varno] = 0;
  osi->tos--;
}