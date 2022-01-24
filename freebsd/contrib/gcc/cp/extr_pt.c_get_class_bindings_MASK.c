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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  UNIFY_ALLOW_NONE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  tf_none ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC11 (tree tparms, tree spec_args, tree args)
{
  int i, ntparms = FUNC5 (tparms);
  tree deduced_args;
  tree innermost_deduced_args;

  innermost_deduced_args = FUNC8 (ntparms);
  if (FUNC3 (args))
    {
      deduced_args = FUNC7 (args);
      FUNC1 (deduced_args,
			   FUNC2 (deduced_args),
			   innermost_deduced_args);
    }
  else
    deduced_args = innermost_deduced_args;

  if (FUNC10 (tparms, deduced_args,
	     FUNC0 (spec_args),
	     FUNC0 (args),
	     UNIFY_ALLOW_NONE))
    return NULL_TREE;

  for (i =  0; i < ntparms; ++i)
    if (! FUNC4 (innermost_deduced_args, i))
      return NULL_TREE;

  /* Verify that nondeduced template arguments agree with the type
     obtained from argument deduction.

     For example:

       struct A { typedef int X; };
       template <class T, class U> struct C {};
       template <class T> struct C<T, typename T::X> {};

     Then with the instantiation `C<A, int>', we can deduce that
     `T' is `A' but unify () does not check whether `typename T::X'
     is `int'.  */
  spec_args = FUNC9 (spec_args, deduced_args, tf_none, NULL_TREE);
  if (spec_args == error_mark_node
      /* We only need to check the innermost arguments; the other
	 arguments will always agree.  */
      || !FUNC6 (FUNC0 (spec_args),
			      FUNC0 (args)))
    return NULL_TREE;

  return deduced_args;
}