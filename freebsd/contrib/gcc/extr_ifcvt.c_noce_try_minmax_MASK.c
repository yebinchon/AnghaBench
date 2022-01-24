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
struct noce_if_info {void* x; void* cond_earliest; void* cond; int /*<<< orphan*/  insn_a; int /*<<< orphan*/  jump; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
typedef  void* rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int FALSE ; 
#define  GE 139 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
#define  GEU 138 
#define  GT 137 
#define  GTU 136 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  LE 135 
#define  LEU 134 
#define  LT 133 
#define  LTU 132 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 int SMAX ; 
 int SMIN ; 
 int TRUE ; 
 int UMAX ; 
 int UMIN ; 
#define  UNGE 131 
#define  UNGT 130 
#define  UNLE 129 
#define  UNLT 128 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct noce_if_info*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ no_new_pseudos ; 
 int /*<<< orphan*/  FUNC10 (void*,void*) ; 
 void* FUNC11 (struct noce_if_info*,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15 (struct noce_if_info *if_info)
{
  rtx cond, earliest, target, seq;
  enum rtx_code code, op;
  int unsignedp;

  /* ??? Can't guarantee that expand_binop won't create pseudos.  */
  if (no_new_pseudos)
    return FALSE;

  /* ??? Reject modes with NaNs or signed zeros since we don't know how
     they will be resolved with an SMIN/SMAX.  It wouldn't be too hard
     to get the target to tell us...  */
  if (FUNC3 (FUNC1 (if_info->x))
      || FUNC2 (FUNC1 (if_info->x)))
    return FALSE;

  cond = FUNC11 (if_info, if_info->a, &earliest);
  if (!cond)
    return FALSE;

  /* Verify the condition is of the form we expect, and canonicalize
     the comparison code.  */
  code = FUNC0 (cond);
  if (FUNC12 (FUNC5 (cond, 0), if_info->a))
    {
      if (! FUNC12 (FUNC5 (cond, 1), if_info->b))
	return FALSE;
    }
  else if (FUNC12 (FUNC5 (cond, 1), if_info->a))
    {
      if (! FUNC12 (FUNC5 (cond, 0), if_info->b))
	return FALSE;
      code = FUNC14 (code);
    }
  else
    return FALSE;

  /* Determine what sort of operation this is.  Note that the code is for
     a taken branch, so the code->operation mapping appears backwards.  */
  switch (code)
    {
    case LT:
    case LE:
    case UNLT:
    case UNLE:
      op = SMAX;
      unsignedp = 0;
      break;
    case GT:
    case GE:
    case UNGT:
    case UNGE:
      op = SMIN;
      unsignedp = 0;
      break;
    case LTU:
    case LEU:
      op = UMAX;
      unsignedp = 1;
      break;
    case GTU:
    case GEU:
      op = UMIN;
      unsignedp = 1;
      break;
    default:
      return FALSE;
    }

  FUNC13 ();

  target = FUNC9 (FUNC1 (if_info->x), op,
				if_info->a, if_info->b,
				if_info->x, unsignedp, OPTAB_WIDEN);
  if (! target)
    {
      FUNC8 ();
      return FALSE;
    }
  if (target != if_info->x)
    FUNC10 (if_info->x, target);

  seq = FUNC7 (if_info);
  if (!seq)
    return FALSE;

  FUNC6 (seq, if_info->jump, FUNC4 (if_info->insn_a));
  if_info->cond = cond;
  if_info->cond_earliest = earliest;

  return TRUE;
}