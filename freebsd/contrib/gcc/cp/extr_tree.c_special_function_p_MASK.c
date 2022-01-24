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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  special_function_kind ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  sfk_assignment_operator ; 
 int /*<<< orphan*/  sfk_base_destructor ; 
 int /*<<< orphan*/  sfk_complete_destructor ; 
 int /*<<< orphan*/  sfk_constructor ; 
 int /*<<< orphan*/  sfk_conversion ; 
 int /*<<< orphan*/  sfk_copy_constructor ; 
 int /*<<< orphan*/  sfk_deleting_destructor ; 
 int /*<<< orphan*/  sfk_destructor ; 
 int /*<<< orphan*/  sfk_none ; 

special_function_kind
FUNC8 (tree decl)
{
  /* Rather than doing all this stuff with magic names, we should
     probably have a field of type `special_function_kind' in
     DECL_LANG_SPECIFIC.  */
  if (FUNC4 (decl))
    return sfk_copy_constructor;
  if (FUNC2 (decl))
    return sfk_constructor;
  if (FUNC7 (decl) == NOP_EXPR)
    return sfk_assignment_operator;
  if (FUNC6 (decl))
    return sfk_destructor;
  if (FUNC1 (decl))
    return sfk_complete_destructor;
  if (FUNC0 (decl))
    return sfk_base_destructor;
  if (FUNC5 (decl))
    return sfk_deleting_destructor;
  if (FUNC3 (decl))
    return sfk_conversion;

  return sfk_none;
}