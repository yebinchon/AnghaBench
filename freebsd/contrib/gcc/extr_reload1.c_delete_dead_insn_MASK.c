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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  REG_DEAD ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (rtx insn)
{
  rtx prev = FUNC8 (insn);
  rtx prev_dest;

  /* If the previous insn sets a register that dies in our insn, delete it
     too.  */
  if (prev && FUNC0 (FUNC1 (prev)) == SET
      && (prev_dest = FUNC4 (FUNC1 (prev)), FUNC3 (prev_dest))
      && FUNC9 (prev_dest, FUNC1 (insn))
      && FUNC7 (insn, REG_DEAD, FUNC2 (prev_dest))
      && ! FUNC10 (FUNC6 (FUNC1 (prev))))
    FUNC11 (prev);

  FUNC5 (insn);
}