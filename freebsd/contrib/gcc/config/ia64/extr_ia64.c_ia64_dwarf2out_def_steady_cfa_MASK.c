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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_pointer_rtx ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ frame_pointer_needed ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

__attribute__((used)) static void
FUNC5 (rtx insn)
{
  rtx fp = frame_pointer_needed
    ? hard_frame_pointer_rtx
    : stack_pointer_rtx;

  FUNC2
    (FUNC3 (insn),
     FUNC1 (fp),
     FUNC4
     (FUNC1 (arg_pointer_rtx), FUNC1 (fp))
     + FUNC0 (current_function_decl));
}