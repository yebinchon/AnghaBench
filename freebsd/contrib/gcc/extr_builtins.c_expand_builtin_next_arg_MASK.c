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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  current_function_arg_offset_rtx ; 
 int /*<<< orphan*/  current_function_internal_arg_pointer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC1 (void)
{
  /* Checking arguments is already done in fold_builtin_next_arg
     that must be called before this function.  */
  return FUNC0 (Pmode, add_optab,
		       current_function_internal_arg_pointer,
		       current_function_arg_offset_rtx,
		       NULL_RTX, 0, OPTAB_LIB_WIDEN);
}