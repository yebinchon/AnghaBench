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
typedef  int tsubst_flags_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNCTION_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int tf_error ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static tree
FUNC17 (tree t,
		      tree args,
		      tsubst_flags_t complain,
		      tree in_decl)
{
  tree return_type;
  tree arg_types;
  tree fntype;

  /* The TYPE_CONTEXT is not used for function/method types.  */
  FUNC14 (FUNC7 (t) == NULL_TREE);

  /* Substitute the return type.  */
  return_type = FUNC15 (FUNC3 (t), args, complain, in_decl);
  if (return_type == error_mark_node)
    return error_mark_node;
  /* The standard does not presently indicate that creation of a
     function type with an invalid return type is a deduction failure.
     However, that is clearly analogous to creating an array of "void"
     or a reference to a reference.  This is core issue #486.  */
  if (FUNC2 (return_type) == ARRAY_TYPE
      || FUNC2 (return_type) == FUNCTION_TYPE)
    {
      if (complain & tf_error)
	{
	  if (FUNC2 (return_type) == ARRAY_TYPE)
	    FUNC13 ("function returning an array");
	  else
	    FUNC13 ("function returning a function");
	}
      return error_mark_node;
    }

  /* Substitute the argument types.  */
  arg_types = FUNC16 (FUNC5 (t), args,
				complain, in_decl);
  if (arg_types == error_mark_node)
    return error_mark_node;

  /* Construct a new type node and return it.  */
  if (FUNC2 (t) == FUNCTION_TYPE)
    fntype = FUNC9 (return_type, arg_types);
  else
    {
      tree r = FUNC3 (FUNC4 (arg_types));
      if (! FUNC0 (r))
	{
	  /* [temp.deduct]

	     Type deduction may fail for any of the following
	     reasons:

	     -- Attempting to create "pointer to member of T" when T
	     is not a class type.  */
	  if (complain & tf_error)
	    FUNC13 ("creating pointer to member function of non-class type %qT",
		      r);
	  return error_mark_node;
	}

      fntype = FUNC10 (r, return_type,
					   FUNC1 (arg_types));
    }
  fntype = FUNC11 (fntype, FUNC8 (t), complain);
  fntype = FUNC12 (fntype, FUNC6 (t));

  return fntype;
}