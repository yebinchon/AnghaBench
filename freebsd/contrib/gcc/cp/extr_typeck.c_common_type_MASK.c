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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int ENUMERAL_TYPE ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int VECTOR_TYPE ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

tree
FUNC8 (tree t1, tree t2)
{
  enum tree_code code1;
  enum tree_code code2;

  /* If one type is nonsense, bail.  */
  if (t1 == error_mark_node || t2 == error_mark_node)
    return error_mark_node;

  code1 = FUNC1 (t1);
  code2 = FUNC1 (t2);

  if ((FUNC0 (t1) || code1 == ENUMERAL_TYPE
       || code1 == VECTOR_TYPE)
      && (FUNC0 (t2) || code2 == ENUMERAL_TYPE
	  || code2 == VECTOR_TYPE))
    return FUNC7 (t1, t2);

  else if ((FUNC4 (t1) && FUNC4 (t2))
	   || (FUNC3 (t1) && FUNC3 (t2))
	   || (FUNC2 (t1) && FUNC2 (t2)))
    return FUNC5 (t1, t2, error_mark_node, error_mark_node,
				   "conversion");
  else
    FUNC6 ();
}