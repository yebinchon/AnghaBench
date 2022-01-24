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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  REG_DEP_ANTI ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC9 (rtx insn)
{
  rtx link, prev_nonnote;

  for (link = FUNC1 (insn); link ; link = FUNC4 (link, 1))
    {
      rtx i = insn;
      do
	{
	  i = FUNC7 (i);

	  if (FUNC4 (link, 0) == i)
	    goto next_link;
	} while (FUNC3 (i));
      if (! FUNC8 (i, FUNC4 (link, 0)))
	FUNC5 (i, FUNC4 (link, 0), FUNC2 (link));
    next_link:;
    }

  FUNC6 (insn);

  prev_nonnote = FUNC7 (insn);
  if (FUNC0 (insn) == FUNC0 (prev_nonnote)
      && ! FUNC8 (insn, prev_nonnote))
    FUNC5 (insn, prev_nonnote, REG_DEP_ANTI);
}