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
struct z_candidate {scalar_t__ fn; int /*<<< orphan*/ * convs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ CALL_EXPR ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  DEDUCE_CALL ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNCTION_TYPE ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (struct z_candidate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  conversion_obstack ; 
 void* FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,scalar_t__,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  pedantic ; 
 int /*<<< orphan*/  FUNC27 (struct z_candidate*) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 struct z_candidate* FUNC29 (struct z_candidate*,int /*<<< orphan*/ ,int*) ; 
 struct z_candidate* FUNC30 (struct z_candidate*) ; 
 scalar_t__ FUNC31 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static tree
FUNC32 (tree obj, tree args)
{
  struct z_candidate *candidates = 0, *cand;
  tree fns, convs, mem_args = NULL_TREE;
  tree type = FUNC8 (obj);
  bool any_viable_p;
  tree result = NULL_TREE;
  void *p;

  if (FUNC11 (type))
    {
      /* It's no good looking for an overloaded operator() on a
	 pointer-to-member-function.  */
      FUNC23 ("pointer-to-member function %E cannot be called without an object; consider using .* or ->*", obj);
      return error_mark_node;
    }

  if (FUNC10 (type))
    {
      fns = FUNC25 (FUNC10 (type), FUNC16 (CALL_EXPR), 1);
      if (fns == error_mark_node)
	return error_mark_node;
    }
  else
    fns = NULL_TREE;

  args = FUNC28 (args);

  if (args == error_mark_node)
    return error_mark_node;

  /* Get the high-water mark for the CONVERSION_OBSTACK.  */
  p = FUNC20 (0);

  if (fns)
    {
      tree base = FUNC2 (FUNC0 (fns));
      mem_args = FUNC31 (NULL_TREE, FUNC19 (obj), args);

      for (fns = FUNC1 (fns); fns; fns = FUNC5 (fns))
	{
	  tree fn = FUNC4 (fns);
	  if (FUNC7 (fn) == TEMPLATE_DECL)
	    FUNC14 (&candidates, fn, base, NULL_TREE,
				    mem_args, NULL_TREE,
				    FUNC10 (type),
				    FUNC10 (type),
				    LOOKUP_NORMAL, DEDUCE_CALL);
	  else
	    FUNC13
	      (&candidates, fn, base, mem_args, FUNC10 (type),
	       FUNC10 (type), LOOKUP_NORMAL);
	}
    }

  convs = FUNC24 (type);

  for (; convs; convs = FUNC6 (convs))
    {
      tree fns = FUNC9 (convs);
      tree totype = FUNC8 (FUNC8 (FUNC4 (fns)));

      if ((FUNC7 (totype) == POINTER_TYPE
	   && FUNC7 (FUNC8 (totype)) == FUNCTION_TYPE)
	  || (FUNC7 (totype) == REFERENCE_TYPE
	      && FUNC7 (FUNC8 (totype)) == FUNCTION_TYPE)
	  || (FUNC7 (totype) == REFERENCE_TYPE
	      && FUNC7 (FUNC8 (totype)) == POINTER_TYPE
	      && FUNC7 (FUNC8 (FUNC8 (totype))) == FUNCTION_TYPE))
	for (; fns; fns = FUNC5 (fns))
	  {
	    tree fn = FUNC4 (fns);
	    if (FUNC7 (fn) == TEMPLATE_DECL)
	      FUNC15
		(&candidates, fn, obj, args, totype,
		 /*access_path=*/NULL_TREE,
		 /*conversion_path=*/NULL_TREE);
	    else
	      FUNC12 (&candidates, fn, obj, args,
				  /*conversion_path=*/NULL_TREE,
				  /*access_path=*/NULL_TREE);
	  }
    }

  candidates = FUNC29 (candidates, pedantic, &any_viable_p);
  if (!any_viable_p)
    {
      FUNC23 ("no match for call to %<(%T) (%A)%>", FUNC8 (obj), args);
      FUNC27 (candidates);
      result = error_mark_node;
    }
  else
    {
      cand = FUNC30 (candidates);
      if (cand == 0)
	{
	  FUNC23 ("call of %<(%T) (%A)%> is ambiguous", FUNC8 (obj), args);
	  FUNC27 (candidates);
	  result = error_mark_node;
	}
      /* Since cand->fn will be a type, not a function, for a conversion
	 function, we must be careful not to unconditionally look at
	 DECL_NAME here.  */
      else if (FUNC7 (cand->fn) == FUNCTION_DECL
	       && FUNC3 (cand->fn) == CALL_EXPR)
	result = FUNC18 (cand, LOOKUP_NORMAL);
      else
	{
	  obj = FUNC22 (cand->convs[0], obj, cand->fn, -1);
	  obj = FUNC21 (obj);
	  result = FUNC17 (obj, args);
	}
    }

  /* Free all the conversions we allocated.  */
  FUNC26 (&conversion_obstack, p);

  return result;
}