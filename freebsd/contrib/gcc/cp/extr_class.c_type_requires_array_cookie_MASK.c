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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  VEC_DELETE_EXPR ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sizetype ; 
 scalar_t__ void_list_node ; 

__attribute__((used)) static bool
FUNC14 (tree type)
{
  tree fns;
  bool has_two_argument_delete_p = false;

  FUNC11 (FUNC1 (type));

  /* If there's a non-trivial destructor, we need a cookie.  In order
     to iterate through the array calling the destructor for each
     element, we'll have to know how many elements there are.  */
  if (FUNC9 (type))
    return true;

  /* If the usual deallocation function is a two-argument whose second
     argument is of type `size_t', then we have to pass the size of
     the array to the deallocation function, so we will need to store
     a cookie.  */
  fns = FUNC12 (FUNC8 (type),
			 FUNC10 (VEC_DELETE_EXPR),
			 /*protect=*/0);
  /* If there are no `operator []' members, or the lookup is
     ambiguous, then we don't need a cookie.  */
  if (!fns || fns == error_mark_node)
    return false;
  /* Loop through all of the functions.  */
  for (fns = FUNC0 (fns); fns; fns = FUNC3 (fns))
    {
      tree fn;
      tree second_parm;

      /* Select the current function.  */
      fn = FUNC2 (fns);
      /* See if this function is a one-argument delete function.  If
	 it is, then it will be the usual deallocation function.  */
      second_parm = FUNC4 (FUNC7 (FUNC5 (fn)));
      if (second_parm == void_list_node)
	return false;
      /* Otherwise, if we have a two-argument function and the second
	 argument is `size_t', it will be the usual deallocation
	 function -- unless there is one-argument function, too.  */
      if (FUNC4 (second_parm) == void_list_node
	  && FUNC13 (FUNC6 (second_parm), sizetype))
	has_two_argument_delete_p = true;
    }

  return has_two_argument_delete_p;
}