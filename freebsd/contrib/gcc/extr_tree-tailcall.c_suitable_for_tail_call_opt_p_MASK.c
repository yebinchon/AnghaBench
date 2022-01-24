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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ USING_SJLJ_EXCEPTIONS ; 
 scalar_t__ current_function_calls_alloca ; 
 scalar_t__ current_function_calls_setjmp ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static bool
FUNC4 (void)
{
  tree param;

  /* alloca (until we have stack slot life analysis) inhibits
     sibling call optimizations, but not tail recursion.  */
  if (current_function_calls_alloca)
    return false;

  /* If we are using sjlj exceptions, we may need to add a call to
     _Unwind_SjLj_Unregister at exit of the function.  Which means
     that we cannot do any sibcall transformations.  */
  if (USING_SJLJ_EXCEPTIONS && FUNC3 ())
    return false;

  /* Any function that calls setjmp might have longjmp called from
     any called function.  ??? We really should represent this
     properly in the CFG so that this needn't be special cased.  */
  if (current_function_calls_setjmp)
    return false;

  /* ??? It is OK if the argument of a function is taken in some cases,
     but not in all cases.  See PR15387 and PR19616.  Revisit for 4.1.  */
  for (param = FUNC0 (current_function_decl);
       param;
       param = FUNC2 (param))
    if (FUNC1 (param))
      return false;

  return true;
}