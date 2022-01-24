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
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ERROR_MARK ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ current_function_decl ; 

tree
FUNC5 (tree decl)
{
  if (/* Don't change a variable array bound or initial value to a constant
	 in a place where a variable is invalid.  Note that DECL_INITIAL
	 isn't valid for a PARM_DECL.  */
      current_function_decl != 0
      && FUNC1 (decl) != PARM_DECL
      && !FUNC4 (decl)
      && FUNC3 (decl)
      && FUNC0 (decl) != 0
      && FUNC1 (FUNC0 (decl)) != ERROR_MARK
      /* This is invalid if initial value is not constant.
	 If it has either a function call, a memory reference,
	 or a variable, then re-evaluating it could give different results.  */
      && FUNC2 (FUNC0 (decl))
      /* Check for cases where this is sub-optimal, even though valid.  */
      && FUNC1 (FUNC0 (decl)) != CONSTRUCTOR)
    return FUNC0 (decl);
  return decl;
}