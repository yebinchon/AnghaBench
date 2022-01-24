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
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_pointer_rtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  frame_pointer_rtx ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

__attribute__((used)) static rtx
FUNC8 (rtx mem, HOST_WIDE_INT adjustment)
{
  rtx addr, cfa, tmp;

#ifdef FRAME_POINTER_CFA_OFFSET
  adjustment -= FRAME_POINTER_CFA_OFFSET (current_function_decl);
  cfa = plus_constant (frame_pointer_rtx, adjustment);
#else
  adjustment -= FUNC0 (current_function_decl);
  cfa = FUNC4 (arg_pointer_rtx, adjustment);
#endif

  addr = FUNC6 (FUNC3 (FUNC2 (mem, 0)), stack_pointer_rtx, cfa);
  tmp = FUNC7 (addr);
  if (tmp)
    addr = tmp;

  return FUNC5 (mem, addr);
}