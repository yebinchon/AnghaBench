#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_20__ {int /*<<< orphan*/  stack_adjust; } ;
typedef  TYPE_3__ dataflow_set ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_18__ {int /*<<< orphan*/  adjust; int /*<<< orphan*/  loc; } ;
struct TYPE_19__ {int type; TYPE_1__ u; int /*<<< orphan*/  insn; } ;
struct TYPE_16__ {int /*<<< orphan*/  vars; } ;
struct TYPE_17__ {int n_mos; TYPE_2__* mos; TYPE_14__ in; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMIT_NOTE_AFTER_INSN ; 
 int /*<<< orphan*/  EMIT_NOTE_BEFORE_INSN ; 
 int FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  MO_ADJUST 134 
#define  MO_CALL 133 
#define  MO_CLOBBER 132 
#define  MO_COPY 131 
#define  MO_SET 130 
#define  MO_USE 129 
#define  MO_USE_NO_VAR 128 
 int /*<<< orphan*/  REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_15__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  call_used_reg_set ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC16 (basic_block bb)
{
  int i;
  dataflow_set set;

  FUNC6 (&set, FUNC8 (FUNC3 (bb)->in.vars) + 3);
  FUNC4 (&set, &FUNC3 (bb)->in);

  for (i = 0; i < FUNC3 (bb)->n_mos; i++)
    {
      rtx insn = FUNC3 (bb)->mos[i].insn;

      switch (FUNC3 (bb)->mos[i].type)
	{
	  case MO_CALL:
	    {
	      int r;

	      for (r = 0; r < FIRST_PSEUDO_REGISTER; r++)
		if (FUNC2 (call_used_reg_set, r))
		  {
		    FUNC15 (&set, r);
		  }
	      FUNC7 (insn, EMIT_NOTE_AFTER_INSN);
	    }
	    break;

	  case MO_USE:
	    {
	      rtx loc = FUNC3 (bb)->mos[i].u.loc;

	      if (FUNC0 (loc) == REG)
		FUNC14 (&set, loc);
	      else
		FUNC11 (&set, loc);

	      FUNC7 (insn, EMIT_NOTE_AFTER_INSN);
	    }
	    break;

	  case MO_SET:
	    {
	      rtx loc = FUNC3 (bb)->mos[i].u.loc;

	      if (FUNC1 (loc))
		FUNC13 (&set, loc, true);
	      else
		FUNC10 (&set, loc, true);

	      FUNC7 (insn, EMIT_NOTE_BEFORE_INSN);
	    }
	    break;

	  case MO_COPY:
	    {
	      rtx loc = FUNC3 (bb)->mos[i].u.loc;

	      if (FUNC1 (loc))
		FUNC13 (&set, loc, false);
	      else
		FUNC10 (&set, loc, false);

	      FUNC7 (insn, EMIT_NOTE_BEFORE_INSN);
	    }
	    break;

	  case MO_USE_NO_VAR:
	    {
	      rtx loc = FUNC3 (bb)->mos[i].u.loc;

	      if (FUNC1 (loc))
		FUNC12 (&set, loc, false);
	      else
		FUNC9 (&set, loc, false);

	      FUNC7 (insn, EMIT_NOTE_AFTER_INSN);
	    }
	    break;

	  case MO_CLOBBER:
	    {
	      rtx loc = FUNC3 (bb)->mos[i].u.loc;

	      if (FUNC1 (loc))
		FUNC12 (&set, loc, true);
	      else
		FUNC9 (&set, loc, true);

	      FUNC7 (insn, EMIT_NOTE_BEFORE_INSN);
	    }
	    break;

	  case MO_ADJUST:
	    set.stack_adjust += FUNC3 (bb)->mos[i].u.adjust;
	    break;
	}
    }
  FUNC5 (&set);
}