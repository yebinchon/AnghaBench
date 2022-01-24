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
 int /*<<< orphan*/ * FUNC0 (scalar_t__ const) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ void_type_node ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7 (tree parm_types, const int method_p, const tree decl)
{
  tree first_parm_type;
  tree parm_decl = decl ? FUNC0 (decl) : NULL_TREE;

  /* Assume this parameter type list is variable-length.  If it ends
     with a void type, then it's not.  */
  int varargs_p = 1;

  /* If this is a member function, skip the first arg, which is the
     this pointer.
       "Member functions do not encode the type of their implicit this
       parameter."

     Similarly, there's no need to mangle artificial parameters, like
     the VTT parameters for constructors and destructors.  */
  if (method_p)
    {
      parm_types = FUNC2 (parm_types);
      parm_decl = parm_decl ? FUNC2 (parm_decl) : NULL_TREE;

      while (parm_decl && FUNC1 (parm_decl))
	{
	  parm_types = FUNC2 (parm_types);
	  parm_decl = FUNC2 (parm_decl);
	}
    }

  for (first_parm_type = parm_types;
       parm_types;
       parm_types = FUNC2 (parm_types))
    {
      tree parm = FUNC3 (parm_types);
      if (parm == void_type_node)
	{
	  /* "Empty parameter lists, whether declared as () or
	     conventionally as (void), are encoded with a void parameter
	     (v)."  */
	  if (parm_types == first_parm_type)
	    FUNC6 (parm);
	  /* If the parm list is terminated with a void type, it's
	     fixed-length.  */
	  varargs_p = 0;
	  /* A void type better be the last one.  */
	  FUNC4 (FUNC2 (parm_types) == NULL);
	}
      else
	FUNC6 (parm);
    }

  if (varargs_p)
    /* <builtin-type> ::= z  # ellipsis  */
    FUNC5 ('z');
}