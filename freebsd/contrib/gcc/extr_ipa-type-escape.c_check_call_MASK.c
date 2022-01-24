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
struct cgraph_node {int dummy; } ;
typedef  enum availability { ____Placeholder_availability } availability ;

/* Variables and functions */
 int AVAIL_NOT_AVAILABLE ; 
 int AVAIL_OVERWRITABLE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int ECF_MALLOC ; 
 int /*<<< orphan*/  EXPOSED_PARAMETER ; 
 int /*<<< orphan*/  FULL_ESCAPE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (struct cgraph_node*) ; 
 struct cgraph_node* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static bool
FUNC14 (tree call_expr) 
{
  int flags = FUNC6(call_expr);
  tree operand_list = FUNC2 (call_expr, 1);
  tree operand;
  tree callee_t = FUNC11 (call_expr);
  tree argument;
  struct cgraph_node* callee;
  enum availability avail = AVAIL_NOT_AVAILABLE;

  for (operand = operand_list;
       operand != NULL_TREE;
       operand = FUNC1 (operand))
    {
      tree argument = FUNC4 (operand);
      FUNC10 (argument);
    }
  
  if (callee_t)
    {
      tree arg_type;
      tree last_arg_type = NULL;
      callee = FUNC8(callee_t);
      avail = FUNC7 (callee);
      
      /* Check that there are no implicit casts in the passing of
	 parameters.  */
      if (FUNC5 (FUNC3 (callee_t)))
	{
	  operand = operand_list;
	  for (arg_type = FUNC5 (FUNC3 (callee_t));
	       arg_type && FUNC4 (arg_type) != void_type_node;
	       arg_type = FUNC1 (arg_type))
	    {
	      if (operand)
		{
		  argument = FUNC4 (operand);
		  last_arg_type = FUNC4(arg_type);
		  FUNC9 (last_arg_type, argument);
		  operand = FUNC1 (operand);
		}
	      else 
		/* The code reaches here for some unfortunate
		   builtin functions that do not have a list of
		   argument types.  */
		break; 
	    }
	} 
      else  
	{ 
	  /* FIXME - According to Geoff Keating, we should never
	     have to do this; the front ends should always process
	     the arg list from the TYPE_ARG_LIST. */
	  operand = operand_list;
	  for (arg_type = FUNC0 (callee_t); 
	       arg_type;
	       arg_type = FUNC1 (arg_type))
	    {
	      if (operand)
		{
		  argument = FUNC4 (operand);
		  last_arg_type = FUNC3(arg_type);
		  FUNC9 (last_arg_type, argument);
		  operand = FUNC1 (operand);
		} 
	      else 
		/* The code reaches here for some unfortunate
		   builtin functions that do not have a list of
		   argument types.  */
		break; 
	    }
	}
      
      /* In the case where we have a var_args function, we need to
	 check the remaining parameters against the last argument.  */
      arg_type = last_arg_type;
      for (;
	   operand != NULL_TREE;
	   operand = FUNC1 (operand))
	{
	  argument = FUNC4 (operand);
	  if (arg_type)
	    FUNC9 (arg_type, argument);
	  else 
	    {
	      /* The code reaches here for some unfortunate
		 builtin functions that do not have a list of
		 argument types.  Most of these functions have
		 been marked as having their parameters not
		 escape, but for the rest, the type is doomed.  */
	      tree type = FUNC12 (FUNC3 (argument), false, false);
	      FUNC13 (type, FULL_ESCAPE);
	    }
	}
    }

  /* The callee is either unknown (indirect call) or there is just no
     scannable code for it (external call) .  We look to see if there
     are any bits available for the callee (such as by declaration or
     because it is builtin) and process solely on the basis of those
     bits. */

  if (avail == AVAIL_NOT_AVAILABLE || avail == AVAIL_OVERWRITABLE)
    {
      /* If this is a direct call to an external function, mark all of
	 the parameter and return types.  */
      for (operand = operand_list;
	   operand != NULL_TREE;
	   operand = FUNC1 (operand))
	{
	  tree type = 
	    FUNC12 (FUNC3 (FUNC4 (operand)), false, false);
	  FUNC13 (type, EXPOSED_PARAMETER);
    }
	  
      if (callee_t) 
	{
	  tree type = 
	    FUNC12 (FUNC3 (FUNC3 (callee_t)), false, false);
	  FUNC13 (type, EXPOSED_PARAMETER);
	}
    }
  return (flags & ECF_MALLOC);
}