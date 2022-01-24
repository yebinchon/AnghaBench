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
 scalar_t__ DEFAULT_ARG ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  local_variable_p_walkfn ; 
 scalar_t__ FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

tree
FUNC6 (tree decl, tree arg)
{
  tree var;
  tree decl_type;

  if (FUNC0 (arg) == DEFAULT_ARG)
    /* We get a DEFAULT_ARG when looking at an in-class declaration
       with a default argument.  Ignore the argument for now; we'll
       deal with it after the class is complete.  */
    return arg;

  if (FUNC2 (decl))
    {
      decl_type = decl;
      decl = NULL_TREE;
    }
  else
    decl_type = FUNC1 (decl);

  if (arg == error_mark_node
      || decl == error_mark_node
      || FUNC1 (arg) == error_mark_node
      || decl_type == error_mark_node)
    /* Something already went wrong.  There's no need to check
       further.  */
    return error_mark_node;

  /* [dcl.fct.default]

     A default argument expression is implicitly converted to the
     parameter type.  */
  if (!FUNC1 (arg)
      || !FUNC3 (decl_type, FUNC1 (arg), arg, LOOKUP_NORMAL))
    {
      if (decl)
	FUNC4 ("default argument for %q#D has type %qT",
	       decl, FUNC1 (arg));
      else
	FUNC4 ("default argument for parameter of type %qT has type %qT",
	       decl_type, FUNC1 (arg));

      return error_mark_node;
    }

  /* [dcl.fct.default]

     Local variables shall not be used in default argument
     expressions.

     The keyword `this' shall not be used in a default argument of a
     member function.  */
  var = FUNC5 (&arg, local_variable_p_walkfn,
				      NULL);
  if (var)
    {
      FUNC4 ("default argument %qE uses local variable %qD", arg, var);
      return error_mark_node;
    }

  /* All is well.  */
  return arg;
}