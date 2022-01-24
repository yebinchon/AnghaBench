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
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 int INTEGER_CST ; 
#define  MODIFY_EXPR 129 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
#define  PHI_NODE 128 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int SSA_NAME ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 int FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC14 (tree arg, tree *length, bitmap visited, int type)
{
  tree var, def_stmt, val;
  
  if (FUNC6 (arg) != SSA_NAME)
    {
      if (type == 2)
	{
	  val = arg;
	  if (FUNC6 (val) != INTEGER_CST
	      || FUNC13 (val) < 0)
	    return false;
	}
      else
	val = FUNC10 (arg, 1);
      if (!val)
	return false;

      if (*length)
	{
	  if (type > 0)
	    {
	      if (FUNC6 (*length) != INTEGER_CST
		  || FUNC6 (val) != INTEGER_CST)
		return false;

	      if (FUNC12 (*length, val))
		*length = val;
	      return true;
	    }
	  else if (FUNC11 (val, *length) != 1)
	    return false;
	}

      *length = val;
      return true;
    }

  /* If we were already here, break the infinite cycle.  */
  if (FUNC8 (visited, FUNC4 (arg)))
    return true;
  FUNC9 (visited, FUNC4 (arg));

  var = arg;
  def_stmt = FUNC3 (var);

  switch (FUNC6 (def_stmt))
    {
      case MODIFY_EXPR:
	{
	  tree rhs;

	  /* The RHS of the statement defining VAR must either have a
	     constant length or come from another SSA_NAME with a constant
	     length.  */
	  rhs = FUNC7 (def_stmt, 1);
	  FUNC5 (rhs);
	  return FUNC14 (rhs, length, visited, type);
	}

      case PHI_NODE:
	{
	  /* All the arguments of the PHI node must have the same constant
	     length.  */
	  int i;

	  for (i = 0; i < FUNC1 (def_stmt); i++)
	    {
	      tree arg = FUNC0 (def_stmt, i);

	      /* If this PHI has itself as an argument, we cannot
		 determine the string length of this argument.  However,
		 if we can find a constant string length for the other
		 PHI args then we can still be sure that this is a
		 constant string length.  So be optimistic and just
		 continue with the next argument.  */
	      if (arg == FUNC2 (def_stmt))
		continue;

	      if (!FUNC14 (arg, length, visited, type))
		return false;
	    }

	  return true;
	}

      default:
	break;
    }


  return false;
}