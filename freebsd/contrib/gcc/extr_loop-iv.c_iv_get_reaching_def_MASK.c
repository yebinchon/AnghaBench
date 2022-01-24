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
struct df_ref {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum iv_grd_result { ____Placeholder_iv_grd_result } iv_grd_result ;
typedef  scalar_t__ basic_block ;
struct TYPE_2__ {struct df_ref* ref; scalar_t__ next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct df_ref*) ; 
 TYPE_1__* FUNC3 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC4 (struct df_ref*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int GRD_INVALID ; 
 int GRD_INVARIANT ; 
 int GRD_MAYBE_BIV ; 
 int GRD_SINGLE_DOM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_loop ; 
 int /*<<< orphan*/  df ; 
 struct df_ref* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum iv_grd_result
FUNC13 (rtx insn, rtx reg, struct df_ref **def)
{
  struct df_ref *use, *adef;
  basic_block def_bb, use_bb;
  rtx def_insn;
  bool dom_p;
  
  *def = NULL;
  if (!FUNC12 (reg))
    return GRD_INVALID;
  if (FUNC5 (reg) == SUBREG)
    reg = FUNC7 (reg);
  FUNC10 (FUNC6 (reg));

  use = FUNC8 (df, insn, reg);
  FUNC10 (use != NULL);

  if (!FUNC3 (use))
    return GRD_INVARIANT;

  /* More than one reaching def.  */
  if (FUNC3 (use)->next)
    return GRD_INVALID;

  adef = FUNC3 (use)->ref;
  def_insn = FUNC4 (adef);
  def_bb = FUNC2 (adef);
  use_bb = FUNC0 (insn);

  if (use_bb == def_bb)
    dom_p = (FUNC1 (df, def_insn) < FUNC1 (df, insn));
  else
    dom_p = FUNC9 (CDI_DOMINATORS, use_bb, def_bb);

  if (dom_p)
    {
      *def = adef;
      return GRD_SINGLE_DOM;
    }

  /* The definition does not dominate the use.  This is still OK if
     this may be a use of a biv, i.e. if the def_bb dominates loop
     latch.  */
  if (FUNC11 (current_loop, def_bb))
    return GRD_MAYBE_BIV;

  return GRD_INVALID;
}