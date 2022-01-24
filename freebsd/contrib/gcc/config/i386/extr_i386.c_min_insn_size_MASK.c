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
 scalar_t__ ADDR_DIFF_VEC ; 
 scalar_t__ ADDR_VEC ; 
 scalar_t__ CALL_INSN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ JUMP_INSN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNSPECV_ALIGN ; 
 scalar_t__ UNSPEC_VOLATILE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (rtx insn)
{
  int l = 0;

  if (!FUNC1 (insn) || !FUNC5 (insn))
    return 0;

  /* Discard alignments we've emit and jump instructions.  */
  if (FUNC0 (FUNC2 (insn)) == UNSPEC_VOLATILE
      && FUNC4 (FUNC2 (insn), 1) == UNSPECV_ALIGN)
    return 0;
  if (FUNC0 (insn) == JUMP_INSN
      && (FUNC0 (FUNC2 (insn)) == ADDR_VEC
	  || FUNC0 (FUNC2 (insn)) == ADDR_DIFF_VEC))
    return 0;

  /* Important case - calls are always 5 bytes.
     It is common to have many calls in the row.  */
  if (FUNC0 (insn) == CALL_INSN
      && FUNC8 (FUNC2 (insn))
      && !FUNC3 (insn))
    return 5;
  if (FUNC6 (insn) <= 1)
    return 1;

  /* For normal instructions we may rely on the sizes of addresses
     and the presence of symbol to require 4 bytes of encoding.
     This is not the case for jumps where references are PC relative.  */
  if (FUNC0 (insn) != JUMP_INSN)
    {
      l = FUNC7 (insn);
      if (l < 4 && FUNC8 (FUNC2 (insn)))
	l = 4;
    }
  if (l)
    return 1+l;
  else
    return 2;
}