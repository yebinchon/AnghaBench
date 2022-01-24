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
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6 (rtx insn)
{
  if (FUNC5 (insn))
    return true;

  /* A clobber of the function return value exists for buggy
     programs that fail to return a value.  Its effect is to
     keep the return value from being live across the entire
     function.  If we allow it to be skipped, we introduce the
     possibility for register lifetime confusion.  */
  if (FUNC0 (FUNC1 (insn)) == CLOBBER
      && FUNC3 (FUNC4 (FUNC1 (insn), 0))
      && FUNC2 (FUNC4 (FUNC1 (insn), 0)))
    return true;

  return false;
}