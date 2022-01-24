#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
typedef  scalar_t__ rtx ;
struct TYPE_2__ {int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 scalar_t__ ADDR_DIFF_VEC ; 
 scalar_t__ ADDR_VEC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  NOTE_INSN_DELETED ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ SEQUENCE ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 TYPE_1__* cfun ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 

void
FUNC15 (void)
{
  tree cur_block = FUNC0 (cfun->decl);
  rtx insn, note;

  insn = FUNC11 ();
  if (!FUNC6 (insn))
    insn = FUNC13 (insn);
  for (; insn; insn = FUNC13 (insn))
    {
      tree this_block;

      /* Avoid putting scope notes between jump table and its label.  */
      if (FUNC2 (insn)
	  && (FUNC1 (FUNC3 (insn)) == ADDR_VEC
	      || FUNC1 (FUNC3 (insn)) == ADDR_DIFF_VEC))
	continue;

      this_block = FUNC12 (insn);
      /* For sequences compute scope resulting from merging all scopes
	 of instructions nested inside.  */
      if (FUNC1 (FUNC3 (insn)) == SEQUENCE)
	{
	  int i;
	  rtx body = FUNC3 (insn);

	  this_block = NULL;
	  for (i = 0; i < FUNC5 (body, 0); i++)
	    this_block = FUNC8 (this_block,
					 FUNC12 (FUNC4 (body, 0, i)));
	}
      if (! this_block)
	continue;

      if (this_block != cur_block)
	{
	  FUNC7 (insn, cur_block, this_block);
	  cur_block = this_block;
	}
    }

  /* change_scope emits before the insn, not after.  */
  note = FUNC10 (NOTE_INSN_DELETED);
  FUNC7 (note, cur_block, FUNC0 (cfun->decl));
  FUNC9 (note);

  FUNC14 ();
}