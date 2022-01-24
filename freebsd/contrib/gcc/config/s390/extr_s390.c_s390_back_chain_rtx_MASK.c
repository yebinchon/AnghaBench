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
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ STACK_POINTER_OFFSET ; 
 int /*<<< orphan*/  TARGET_BACKCHAIN ; 
 scalar_t__ TARGET_PACKED_STACK ; 
 scalar_t__ UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

rtx
FUNC3 (void)
{
  rtx chain;

  FUNC0 (TARGET_BACKCHAIN);

  if (TARGET_PACKED_STACK)
    chain = FUNC2 (stack_pointer_rtx,
			   STACK_POINTER_OFFSET - UNITS_PER_WORD);
  else
    chain = stack_pointer_rtx;

  chain = FUNC1 (Pmode, chain);
  return chain;
}