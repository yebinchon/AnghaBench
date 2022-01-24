#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_4__ {scalar_t__ loc; } ;
struct TYPE_5__ {void* insn; TYPE_1__ u; void* type; } ;
typedef  TYPE_2__ micro_operation ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_6__ {int /*<<< orphan*/  n_mos; TYPE_2__* mos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 void* MO_CLOBBER ; 
 void* MO_COPY ; 
 void* MO_SET ; 
 void* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

__attribute__((used)) static void
FUNC15 (rtx loc, rtx expr, void *insn)
{
  if (FUNC8 (loc))
    {
      basic_block bb = FUNC0 ((rtx) insn);
      micro_operation *mo = FUNC11 (bb)->mos + FUNC11 (bb)->n_mos++;

      if (FUNC1 (expr) == CLOBBER
	  || !(FUNC6 (loc)
	       && FUNC14 (FUNC6 (loc))
	       && FUNC12 (FUNC7 (loc))))
	mo->type = MO_CLOBBER;
      else if (FUNC1 (expr) == SET
	       && FUNC9 (expr) == loc
	       && FUNC13 (FUNC10 (expr),
					FUNC6 (loc),
					FUNC7 (loc)))
	mo->type = MO_COPY;
      else
	mo->type = MO_SET;
      mo->u.loc = loc;
      mo->insn = FUNC5 ((rtx) insn);
    }
  else if (FUNC4 (loc)
	   && FUNC3 (loc)
	   && FUNC14 (FUNC3 (loc))
	   && FUNC12 (FUNC2 (loc)))
    {
      basic_block bb = FUNC0 ((rtx) insn);
      micro_operation *mo = FUNC11 (bb)->mos + FUNC11 (bb)->n_mos++;

      if (FUNC1 (expr) == CLOBBER)
	mo->type = MO_CLOBBER;
      else if (FUNC1 (expr) == SET
	       && FUNC9 (expr) == loc
	       && FUNC13 (FUNC10 (expr),
					FUNC3 (loc),
					FUNC2 (loc)))
	mo->type = MO_COPY;
      else
	mo->type = MO_SET;
      mo->u.loc = loc;
      mo->insn = FUNC5 ((rtx) insn);
    }
}