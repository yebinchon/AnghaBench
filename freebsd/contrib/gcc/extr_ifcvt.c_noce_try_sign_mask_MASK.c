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
struct noce_if_info {scalar_t__ cond; scalar_t__ a; scalar_t__ b; int /*<<< orphan*/  insn_a; int /*<<< orphan*/  jump; int /*<<< orphan*/  x; int /*<<< orphan*/  b_unconditional; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FALSE ; 
 int GE ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int GT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int LE ; 
 int LT ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int /*<<< orphan*/  SET ; 
 int TRUE ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  and_optab ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ constm1_rtx ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct noce_if_info*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ no_new_pseudos ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int
FUNC15 (struct noce_if_info *if_info)
{
  rtx cond, t, m, c, seq;
  enum machine_mode mode;
  enum rtx_code code;

  if (no_new_pseudos)
    return FALSE;

  cond = if_info->cond;
  code = FUNC1 (cond);
  m = FUNC4 (cond, 0);
  c = FUNC4 (cond, 1);

  t = NULL_RTX;
  if (if_info->a == const0_rtx)
    {
      if ((code == LT && c == const0_rtx)
	  || (code == LE && c == constm1_rtx))
	t = if_info->b;
    }
  else if (if_info->b == const0_rtx)
    {
      if ((code == GE && c == const0_rtx)
	  || (code == GT && c == constm1_rtx))
	t = if_info->a;
    }

  if (! t || FUNC13 (t))
    return FALSE;

  /* We currently don't handle different modes.  */
  mode = FUNC2 (t);
  if (FUNC2 (m) != mode)
    return FALSE;

  /* This is only profitable if T is cheap, or T is unconditionally
     executed/evaluated in the original insn sequence.  */
  if (FUNC12 (t, SET) >= FUNC0 (2)
      && (!if_info->b_unconditional
          || t != if_info->b))
    return FALSE;

  FUNC14 ();
  /* Use emit_store_flag to generate "m < 0 ? -1 : 0" instead of expanding
     "(signed) m >> 31" directly.  This benefits targets with specialized
     insns to obtain the signmask, but still uses ashr_optab otherwise.  */
  m = FUNC6 (FUNC10 (mode), LT, m, const0_rtx, mode, 0, -1);
  t = m ? FUNC9 (mode, and_optab, m, t, NULL_RTX, 0, OPTAB_DIRECT)
	: NULL_RTX;

  if (!t)
    {
      FUNC8 ();
      return FALSE;
    }

  FUNC11 (if_info->x, t);

  seq = FUNC7 (if_info);
  if (!seq)
    return FALSE;

  FUNC5 (seq, if_info->jump, FUNC3 (if_info->insn_a));
  return TRUE;
}