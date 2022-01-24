#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {TYPE_1__* handlers; } ;
struct TYPE_3__ {int /*<<< orphan*/  libfunc; } ;

/* Variables and functions */
#define  EQ 133 
 scalar_t__ FUNC0 (int,int) ; 
#define  GE 132 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
#define  GT 131 
 int /*<<< orphan*/  IF_THEN_ELSE ; 
 int /*<<< orphan*/  LCT_CONST ; 
#define  LE 130 
#define  LT 129 
#define  NE 128 
 int /*<<< orphan*/  NULL_RTX ; 
 int UNORDERED ; 
 int VOIDmode ; 
 TYPE_2__** code_to_optab ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  const_true_rtx ; 
 int /*<<< orphan*/  constm1_rtx ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int) ; 
 int word_mode ; 

__attribute__((used)) static void
FUNC16 (rtx *px, rtx *py, enum rtx_code *pcomparison,
		       enum machine_mode *pmode, int *punsignedp)
{
  enum rtx_code comparison = *pcomparison;
  enum rtx_code swapped = FUNC15 (comparison);
  enum rtx_code reversed = FUNC11 (comparison);
  rtx x = *px;
  rtx y = *py;
  enum machine_mode orig_mode = FUNC1 (x);
  enum machine_mode mode;
  rtx value, target, insns, equiv;
  rtx libfunc = 0;
  bool reversed_p = false;

  for (mode = orig_mode;
       mode != VOIDmode;
       mode = FUNC2 (mode))
    {
      if ((libfunc = code_to_optab[comparison]->handlers[mode].libfunc))
	break;

      if ((libfunc = code_to_optab[swapped]->handlers[mode].libfunc))
	{
	  rtx tmp;
	  tmp = x; x = y; y = tmp;
	  comparison = swapped;
	  break;
	}

      if ((libfunc = code_to_optab[reversed]->handlers[mode].libfunc)
	  && FUNC0 (mode, reversed))
	{
	  comparison = reversed;
	  reversed_p = true;
	  break;
	}
    }

  FUNC7 (mode != VOIDmode);

  if (mode != orig_mode)
    {
      x = FUNC3 (mode, x, 0);
      y = FUNC3 (mode, y, 0);
    }

  /* Attach a REG_EQUAL note describing the semantics of the libcall to
     the RTL.  The allows the RTL optimizers to delete the libcall if the
     condition can be determined at compile-time.  */
  if (comparison == UNORDERED)
    {
      rtx temp = FUNC12 (NE, word_mode, mode, x, x);
      equiv = FUNC12 (NE, word_mode, mode, y, y);
      equiv = FUNC13 (IF_THEN_ELSE, word_mode, word_mode,
				    temp, const_true_rtx, equiv);
    }
  else
    {
      equiv = FUNC12 (comparison, word_mode, mode, x, y);
      if (! FUNC0 (mode, comparison))
	{
	  rtx true_rtx, false_rtx;

	  switch (comparison)
	    {
	    case EQ:
	      true_rtx = const0_rtx;
	      false_rtx = const_true_rtx;
	      break;

	    case NE:
	      true_rtx = const_true_rtx;
	      false_rtx = const0_rtx;
	      break;

	    case GT:
	      true_rtx = const1_rtx;
	      false_rtx = const0_rtx;
	      break;

	    case GE:
	      true_rtx = const0_rtx;
	      false_rtx = constm1_rtx;
	      break;

	    case LT:
	      true_rtx = constm1_rtx;
	      false_rtx = const0_rtx;
	      break;

	    case LE:
	      true_rtx = const0_rtx;
	      false_rtx = const1_rtx;
	      break;

	    default:
	      FUNC8 ();
	    }
	  equiv = FUNC13 (IF_THEN_ELSE, word_mode, word_mode,
					equiv, true_rtx, false_rtx);
	}
    }

  FUNC14 ();
  value = FUNC5 (libfunc, NULL_RTX, LCT_CONST,
				   word_mode, 2, x, mode, y, mode);
  insns = FUNC10 ();
  FUNC6 ();

  target = FUNC9 (word_mode);
  FUNC4 (insns, target, value, equiv);

  if (comparison == UNORDERED
      || FUNC0 (mode, comparison))
    comparison = reversed_p ? EQ : NE;

  *px = target;
  *py = const0_rtx;
  *pmode = word_mode;
  *pcomparison = comparison;
  *punsignedp = 0;
}