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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 TYPE_1__* operator_name_info ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ptr_type_node ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sizetype ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ void_list_node ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

tree
FUNC29 (enum tree_code code, tree addr, tree size,
		      bool global_p, tree placement,
		      tree alloc_fn)
{
  tree fn = NULL_TREE;
  tree fns, fnname, argtypes, args, type;
  int pass;

  if (addr == error_mark_node)
    return error_mark_node;

  type = FUNC26 (FUNC9 (FUNC9 (addr)));

  fnname = FUNC13 (code);

  if (FUNC2 (type)
      && FUNC3 (FUNC17 (type))
      && !global_p)
    /* In [class.free]

       If the result of the lookup is ambiguous or inaccessible, or if
       the lookup selects a placement deallocation function, the
       program is ill-formed.

       Therefore, we ask lookup_fnfields to complain about ambiguity.  */
    {
      fns = FUNC21 (FUNC12 (type), fnname, 1);
      if (fns == error_mark_node)
	return error_mark_node;
    }
  else
    fns = NULL_TREE;

  if (fns == NULL_TREE)
    fns = FUNC22 (fnname);

  if (placement)
    {
      /* Get the parameter types for the allocation function that is
	 being called.  */
      FUNC20 (alloc_fn != NULL_TREE);
      argtypes = FUNC7 (FUNC11 (FUNC9 (alloc_fn)));
      /* Also the second argument.  */
      args = FUNC7 (FUNC8 (placement, 1));
    }
  else
    {
      /* First try it without the size argument.  */
      argtypes = void_list_node;
      args = NULL_TREE;
    }

  /* Strip const and volatile from addr.  */
  addr = FUNC18 (ptr_type_node, addr);

  /* We make two tries at finding a matching `operator delete'.  On
     the first pass, we look for a one-operator (or placement)
     operator delete.  If we're not doing placement delete, then on
     the second pass we look for a two-argument delete.  */
  for (pass = 0; pass < (placement ? 1 : 2); ++pass)
    {
      /* Go through the `operator delete' functions looking for one
	 with a matching type.  */
      for (fn = FUNC1 (fns) ? FUNC0 (fns) : fns;
	   fn;
	   fn = FUNC6 (fn))
	{
	  tree t;

	  /* The first argument must be "void *".  */
	  t = FUNC11 (FUNC9 (FUNC5 (fn)));
	  if (!FUNC25 (FUNC10 (t), ptr_type_node))
	    continue;
	  t = FUNC7 (t);
	  /* On the first pass, check the rest of the arguments.  */
	  if (pass == 0)
	    {
	      tree a = argtypes;
	      while (a && t)
		{
		  if (!FUNC25 (FUNC10 (a), FUNC10 (t)))
		    break;
		  a = FUNC7 (a);
		  t = FUNC7 (t);
		}
	      if (!a && !t)
		break;
	    }
	  /* On the second pass, look for a function with exactly two
	     arguments: "void *" and "size_t".  */
	  else if (pass == 1
		   /* For "operator delete(void *, ...)" there will be
		      no second argument, but we will not get an exact
		      match above.  */
		   && t
		   && FUNC25 (FUNC10 (t), sizetype)
		   && FUNC7 (t) == void_list_node)
	    break;
	}

      /* If we found a match, we're done.  */
      if (fn)
	break;
    }

  /* If we have a matching function, call it.  */
  if (fn)
    {
      /* Make sure we have the actual function, and not an
	 OVERLOAD.  */
      fn = FUNC5 (fn);

      /* If the FN is a member function, make sure that it is
	 accessible.  */
      if (FUNC4 (fn))
	FUNC24 (FUNC12 (type), fn, fn);

      if (pass == 0)
	args = FUNC27 (NULL_TREE, addr, args);
      else
	args = FUNC27 (NULL_TREE, addr,
			  FUNC16 (NULL_TREE, size));

      if (placement)
	{
	  /* The placement args might not be suitable for overload
	     resolution at this point, so build the call directly.  */
	  FUNC23 (fn);
	  return FUNC14 (fn, args);
	}
      else
	return FUNC15 (fn, args);
    }

  /* [expr.new]

     If no unambiguous matching deallocation function can be found,
     propagating the exception does not cause the object's memory to
     be freed.  */
  if (alloc_fn)
    {
      if (!placement)
	FUNC28 (0, "no corresponding deallocation function for `%D'", 
		 alloc_fn);
      return NULL_TREE;
    }

  FUNC19 ("no suitable %<operator %s%> for %qT",
	 operator_name_info[(int)code].name, type);
  return error_mark_node;
}