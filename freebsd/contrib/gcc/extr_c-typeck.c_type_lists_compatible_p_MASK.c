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

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ ERROR_MARK ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC12 (tree args1, tree args2)
{
  /* 1 if no need for warning yet, 2 if warning cause has been seen.  */
  int val = 1;
  int newval = 0;

  while (1)
    {
      tree a1, mv1, a2, mv2;
      if (args1 == 0 && args2 == 0)
	return val;
      /* If one list is shorter than the other,
	 they fail to match.  */
      if (args1 == 0 || args2 == 0)
	return 0;
      mv1 = a1 = FUNC3 (args1);
      mv2 = a2 = FUNC3 (args2);
      if (mv1 && mv1 != error_mark_node && FUNC1 (mv1) != ARRAY_TYPE)
	mv1 = FUNC5 (mv1);
      if (mv2 && mv2 != error_mark_node && FUNC1 (mv2) != ARRAY_TYPE)
	mv2 = FUNC5 (mv2);
      /* A null pointer instead of a type
	 means there is supposed to be an argument
	 but nothing is specified about what type it has.
	 So match anything that self-promotes.  */
      if (a1 == 0)
	{
	  if (FUNC9 (a2) != a2)
	    return 0;
	}
      else if (a2 == 0)
	{
	  if (FUNC9 (a1) != a1)
	    return 0;
	}
      /* If one of the lists has an error marker, ignore this arg.  */
      else if (FUNC1 (a1) == ERROR_MARK
	       || FUNC1 (a2) == ERROR_MARK)
	;
      else if (!(newval = FUNC10 (mv1, mv2)))
	{
	  /* Allow  wait (union {union wait *u; int *i} *)
	     and  wait (union wait *)  to be compatible.  */
	  if (FUNC1 (a1) == UNION_TYPE
	      && (FUNC6 (a1) == 0
		  || FUNC8 (a1))
	      && FUNC1 (FUNC7 (a1)) == INTEGER_CST
	      && FUNC11 (FUNC7 (a1),
				     FUNC7 (a2)))
	    {
	      tree memb;
	      for (memb = FUNC4 (a1);
		   memb; memb = FUNC0 (memb))
		{
		  tree mv3 = FUNC2 (memb);
		  if (mv3 && mv3 != error_mark_node
		      && FUNC1 (mv3) != ARRAY_TYPE)
		    mv3 = FUNC5 (mv3);
		  if (FUNC10 (mv3, mv2))
		    break;
		}
	      if (memb == 0)
		return 0;
	    }
	  else if (FUNC1 (a2) == UNION_TYPE
		   && (FUNC6 (a2) == 0
		       || FUNC8 (a2))
		   && FUNC1 (FUNC7 (a2)) == INTEGER_CST
		   && FUNC11 (FUNC7 (a2),
					  FUNC7 (a1)))
	    {
	      tree memb;
	      for (memb = FUNC4 (a2);
		   memb; memb = FUNC0 (memb))
		{
		  tree mv3 = FUNC2 (memb);
		  if (mv3 && mv3 != error_mark_node
		      && FUNC1 (mv3) != ARRAY_TYPE)
		    mv3 = FUNC5 (mv3);
		  if (FUNC10 (mv3, mv1))
		    break;
		}
	      if (memb == 0)
		return 0;
	    }
	  else
	    return 0;
	}

      /* comptypes said ok, but record if it said to warn.  */
      if (newval > val)
	val = newval;

      args1 = FUNC0 (args1);
      args2 = FUNC0 (args2);
    }
}