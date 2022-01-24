#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* basic_block ;
struct TYPE_6__ {int /*<<< orphan*/  succs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* EXIT_BLOCK_PTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRAP_IF ; 
 scalar_t__ const_true_rtx ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static rtx
FUNC6 (basic_block bb)
{
  rtx trap;

  /* We're not the exit block.  */
  if (bb == EXIT_BLOCK_PTR)
    return NULL_RTX;

  /* The block must have no successors.  */
  if (FUNC1 (bb->succs) > 0)
    return NULL_RTX;

  /* The only instruction in the THEN block must be the trap.  */
  trap = FUNC5 (bb);
  if (! (trap == FUNC0 (bb)
	 && FUNC2 (FUNC3 (trap)) == TRAP_IF
         && FUNC4 (FUNC3 (trap)) == const_true_rtx))
    return NULL_RTX;

  return trap;
}