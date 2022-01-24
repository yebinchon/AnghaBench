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
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ BASELINK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tf_none ; 

__attribute__((used)) static tree
FUNC6 (tree type, tree expr)
{
  tree fns = expr;
  tree fn, fn_no_ptr;

  fn = FUNC5 (type, fns, tf_none);
  if (fn == error_mark_node)
    return error_mark_node;

  fn_no_ptr = fn;
  if (FUNC2 (fn_no_ptr) == ADDR_EXPR)
    fn_no_ptr = FUNC3 (fn_no_ptr, 0);
  if (FUNC2 (fn_no_ptr) == BASELINK)
    fn_no_ptr = FUNC0 (fn_no_ptr);
 
  /* [temp.arg.nontype]/1

     A template-argument for a non-type, non-template template-parameter
     shall be one of:
     [...]
     -- the address of an object or function with external linkage.  */
  if (!FUNC1 (fn_no_ptr))
    {
      FUNC4 ("%qE is not a valid template argument for type %qT "
	     "because function %qD has not external linkage",
	     expr, type, fn_no_ptr);
      return NULL_TREE;
    }

  return fn;
}