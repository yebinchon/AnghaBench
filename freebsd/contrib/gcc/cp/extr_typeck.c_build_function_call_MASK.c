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
 scalar_t__ BLOCK_POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNCTION_TYPE ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

tree
FUNC19 (tree function, tree params)
{
  tree fntype, fndecl;
  tree coerced_params;
  tree name = NULL_TREE;
  int is_method;
  tree original = function;

  /* For Objective-C, convert any calls via a cast to OBJC_TYPE_REF
     expressions, like those used for ObjC messenger dispatches.  */
  function = FUNC17 (function, params);

  /* build_c_cast puts on a NOP_EXPR to make the result not an lvalue.
     Strip such NOP_EXPRs, since FUNCTION is used in non-lvalue context.  */
  if (FUNC3 (function) == NOP_EXPR
      && FUNC5 (function) == FUNC5 (FUNC4 (function, 0)))
    function = FUNC4 (function, 0);

  if (FUNC3 (function) == FUNCTION_DECL)
    {
      name = FUNC2 (function);

      FUNC16 (function);
      fndecl = function;

      /* Convert anything with function type to a pointer-to-function.  */
      if (pedantic && FUNC1 (function))
	FUNC18 ("ISO C++ forbids calling %<::main%> from within program");

      /* Differs from default_conversion by not setting TREE_ADDRESSABLE
	 (because calling an inline function does not mean the function
	 needs to be separately compiled).  */

      if (FUNC0 (function))
	function = FUNC15 (function);
      else
	function = FUNC9 (function);
    }
  else
    {
      fndecl = NULL_TREE;

      function = FUNC9 (function);
    }

  if (function == error_mark_node)
    return error_mark_node;

  fntype = FUNC5 (function);

  if (FUNC8 (fntype))
    {
      FUNC14 ("must use %<.*%> or %<->*%> to call pointer-to-member "
	     "function in %<%E (...)%>",
	     original);
      return error_mark_node;
    }

  is_method = (FUNC3 (fntype) == POINTER_TYPE
	       && FUNC3 (FUNC5 (fntype)) == METHOD_TYPE);

  /* APPLE LOCAL blocks 6040305 */
  if (!(((FUNC3 (fntype) == POINTER_TYPE || FUNC3 (fntype) == BLOCK_POINTER_TYPE)
	 && FUNC3 (FUNC5 (fntype)) == FUNCTION_TYPE)
	|| is_method
	|| FUNC3 (function) == TEMPLATE_ID_EXPR))
    {
      FUNC14 ("%qE cannot be used as a function", original);
      return error_mark_node;
    }

  /* fntype now gets the type of function pointed to.  */
  fntype = FUNC5 (fntype);

  /* Convert the parameters to the types declared in the
     function prototype, or apply default promotions.  */

  /* APPLE LOCAL begin radar 6087117 */
  coerced_params = FUNC13 (FUNC6 (fntype),
				      params, fndecl, LOOKUP_NORMAL,
				      (FUNC3 (FUNC5 (function)) == BLOCK_POINTER_TYPE));
  /* APPLE LOCAL end radar 6087117 */
  if (coerced_params == error_mark_node)
    return error_mark_node;

  /* Check for errors in format strings and inappropriately
     null parameters.  */

  FUNC12 (FUNC7 (fntype), coerced_params,
			    FUNC6 (fntype));
  /* APPLE LOCAL begin blocks 6040305 */
  if (FUNC3 (FUNC5 (function)) == BLOCK_POINTER_TYPE)
    return FUNC10 (fntype, function, coerced_params);
  /* APPLE LOCAL end blocks 6040305 */

  return FUNC11 (function, coerced_params);
}