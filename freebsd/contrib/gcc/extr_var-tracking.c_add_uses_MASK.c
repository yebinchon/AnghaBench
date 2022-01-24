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
typedef  void* rtx ;
struct TYPE_4__ {void* loc; } ;
struct TYPE_5__ {void* insn; TYPE_1__ u; void* type; } ;
typedef  TYPE_2__ micro_operation ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_6__ {int /*<<< orphan*/  n_mos; TYPE_2__* mos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 void* MO_USE ; 
 void* MO_USE_NO_VAR ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static int
FUNC10 (rtx *loc, void *insn)
{
  if (FUNC6 (*loc))
    {
      basic_block bb = FUNC0 ((rtx) insn);
      micro_operation *mo = FUNC7 (bb)->mos + FUNC7 (bb)->n_mos++;

      if (FUNC4 (*loc)
	  && FUNC9 (FUNC4 (*loc))
	  && FUNC8 (FUNC5 (*loc)))
	mo->type = MO_USE;
      else
	mo->type = MO_USE_NO_VAR;
      mo->u.loc = *loc;
      mo->insn = (rtx) insn;
    }
  else if (FUNC3 (*loc)
	   && FUNC2 (*loc)
	   && FUNC9 (FUNC2 (*loc))
	   && FUNC8 (FUNC1 (*loc)))
    {
      basic_block bb = FUNC0 ((rtx) insn);
      micro_operation *mo = FUNC7 (bb)->mos + FUNC7 (bb)->n_mos++;

      mo->type = MO_USE;
      mo->u.loc = *loc;
      mo->insn = (rtx) insn;
    }

  return 0;
}