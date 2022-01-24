#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_21__ {int /*<<< orphan*/  stack_adjust; int /*<<< orphan*/  vars; } ;
typedef  TYPE_3__ dataflow_set ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_19__ {int /*<<< orphan*/  adjust; int /*<<< orphan*/  loc; } ;
struct TYPE_20__ {int type; TYPE_1__ u; } ;
struct TYPE_18__ {int n_mos; TYPE_2__* mos; TYPE_3__ out; TYPE_3__ in; } ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  MO_ADJUST 134 
#define  MO_CALL 133 
#define  MO_CLOBBER 132 
#define  MO_COPY 131 
#define  MO_SET 130 
#define  MO_USE 129 
#define  MO_USE_NO_VAR 128 
 int /*<<< orphan*/  REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_17__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  call_used_reg_set ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int) ; 

__attribute__((used)) static bool
FUNC17 (basic_block bb)
{
  int i, n, r;
  bool changed;
  dataflow_set old_out;
  dataflow_set *in = &FUNC4 (bb)->in;
  dataflow_set *out = &FUNC4 (bb)->out;

  FUNC8 (&old_out, FUNC9 (FUNC4 (bb)->out.vars) + 3);
  FUNC5 (&old_out, out);
  FUNC5 (out, in);

  n = FUNC4 (bb)->n_mos;
  for (i = 0; i < n; i++)
    {
      switch (FUNC4 (bb)->mos[i].type)
	{
	  case MO_CALL:
	    for (r = 0; r < FIRST_PSEUDO_REGISTER; r++)
	      if (FUNC3 (call_used_reg_set, r))
		FUNC16 (out, r);
	    break;

	  case MO_USE:
	    {
	      rtx loc = FUNC4 (bb)->mos[i].u.loc;

	      if (FUNC0 (loc) == REG)
		FUNC15 (out, loc);
	      else if (FUNC0 (loc) == MEM)
		FUNC12 (out, loc);
	    }
	    break;

	  case MO_SET:
	    {
	      rtx loc = FUNC4 (bb)->mos[i].u.loc;

	      if (FUNC2 (loc))
		FUNC14 (out, loc, true);
	      else if (FUNC1 (loc))
		FUNC11 (out, loc, true);
	    }
	    break;

	  case MO_COPY:
	    {
	      rtx loc = FUNC4 (bb)->mos[i].u.loc;

	      if (FUNC2 (loc))
		FUNC14 (out, loc, false);
	      else if (FUNC1 (loc))
		FUNC11 (out, loc, false);
	    }
	    break;

	  case MO_USE_NO_VAR:
	    {
	      rtx loc = FUNC4 (bb)->mos[i].u.loc;

	      if (FUNC2 (loc))
		FUNC13 (out, loc, false);
	      else if (FUNC1 (loc))
		FUNC10 (out, loc, false);
	    }
	    break;

	  case MO_CLOBBER:
	    {
	      rtx loc = FUNC4 (bb)->mos[i].u.loc;

	      if (FUNC2 (loc))
		FUNC13 (out, loc, true);
	      else if (FUNC1 (loc))
		FUNC10 (out, loc, true);
	    }
	    break;

	  case MO_ADJUST:
	    out->stack_adjust += FUNC4 (bb)->mos[i].u.adjust;
	    break;
	}
    }

  changed = FUNC7 (&old_out, out);
  FUNC6 (&old_out);
  return changed;
}