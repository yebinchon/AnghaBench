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
struct noce_if_info {scalar_t__ a; scalar_t__ b; scalar_t__ x; scalar_t__ cond_earliest; scalar_t__ cond; int /*<<< orphan*/  insn_a; int /*<<< orphan*/  jump; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FALSE ; 
#define  GE 135 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  GT 134 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  LE 133 
#define  LT 132 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int NEG ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int SYMBOL_REF ; 
 int TRUE ; 
#define  UNGE 131 
#define  UNGT 130 
#define  UNLE 129 
#define  UNLT 128 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ const1_rtx ; 
 scalar_t__ constm1_rtx ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct noce_if_info*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ no_new_pseudos ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (struct noce_if_info*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 () ; 

__attribute__((used)) static int
FUNC23 (struct noce_if_info *if_info)
{
  rtx cond, earliest, target, seq, a, b, c;
  int negate;

  /* ??? Can't guarantee that expand_binop won't create pseudos.  */
  if (no_new_pseudos)
    return FALSE;

  /* Recognize A and B as constituting an ABS or NABS.  The canonical
     form is a branch around the negation, taken when the object is the
     first operand of a comparison against 0 that evaluates to true.  */
  a = if_info->a;
  b = if_info->b;
  if (FUNC2 (a) == NEG && FUNC20 (FUNC9 (a, 0), b))
    negate = 0;
  else if (FUNC2 (b) == NEG && FUNC20 (FUNC9 (b, 0), a))
    {
      c = a; a = b; b = c;
      negate = 1;
    }
  else
    return FALSE;

  cond = FUNC18 (if_info, b, &earliest);
  if (!cond)
    return FALSE;

  /* Verify the condition is of the form we expect.  */
  if (FUNC20 (FUNC9 (cond, 0), b))
    c = FUNC9 (cond, 1);
  else if (FUNC20 (FUNC9 (cond, 1), b))
    {
      c = FUNC9 (cond, 0);
      negate = !negate;
    }
  else
    return FALSE;

  /* Verify that C is zero.  Search one step backward for a
     REG_EQUAL note or a simple source if necessary.  */
  if (FUNC6 (c))
    {
      rtx set, insn = FUNC19 (earliest);
      if (insn
	  && (set = FUNC21 (insn))
	  && FUNC20 (FUNC7 (set), c))
	{
	  rtx note = FUNC15 (insn);
	  if (note)
	    c = FUNC9 (note, 0);
	  else
	    c = FUNC8 (set);
	}
      else
	return FALSE;
    }
  if (FUNC5 (c)
      && FUNC2 (FUNC9 (c, 0)) == SYMBOL_REF
      && FUNC1 (FUNC9 (c, 0)))
    c = FUNC16 (FUNC9 (c, 0));

  /* Work around funny ideas get_condition has wrt canonicalization.
     Note that these rtx constants are known to be CONST_INT, and
     therefore imply integer comparisons.  */
  if (c == constm1_rtx && FUNC2 (cond) == GT)
    ;
  else if (c == const1_rtx && FUNC2 (cond) == LT)
    ;
  else if (c != FUNC0 (FUNC3 (b)))
    return FALSE;

  /* Determine what sort of operation this is.  */
  switch (FUNC2 (cond))
    {
    case LT:
    case LE:
    case UNLT:
    case UNLE:
      negate = !negate;
      break;
    case GT:
    case GE:
    case UNGT:
    case UNGE:
      break;
    default:
      return FALSE;
    }

  FUNC22 ();

  target = FUNC13 (FUNC3 (if_info->x), b, if_info->x, 1);

  /* ??? It's a quandary whether cmove would be better here, especially
     for integers.  Perhaps combine will clean things up.  */
  if (target && negate)
    target = FUNC14 (FUNC3 (target), NEG, target, if_info->x, 0);

  if (! target)
    {
      FUNC12 ();
      return FALSE;
    }

  if (target != if_info->x)
    FUNC17 (if_info->x, target);

  seq = FUNC11 (if_info);
  if (!seq)
    return FALSE;

  FUNC10 (seq, if_info->jump, FUNC4 (if_info->insn_a));
  if_info->cond = cond;
  if_info->cond_earliest = earliest;

  return TRUE;
}