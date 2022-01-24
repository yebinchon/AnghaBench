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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int CCFPmode ; 
 int CR0_REGNO ; 
#define  EQ 145 
#define  GE 144 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
#define  GEU 143 
#define  GT 142 
#define  GTU 141 
 int FUNC2 (scalar_t__) ; 
#define  LE 140 
#define  LEU 139 
#define  LT 138 
#define  LTGT 137 
#define  LTU 136 
#define  NE 135 
 scalar_t__ NULL_RTX ; 
#define  ORDERED 134 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  REG_BR_PROB ; 
 int REG_BR_PROB_BASE ; 
 scalar_t__ TARGET_E500 ; 
 int /*<<< orphan*/  TARGET_FPRS ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
#define  UNEQ 133 
#define  UNGE 132 
#define  UNGT 131 
#define  UNLE 130 
#define  UNLT 129 
#define  UNORDERED 128 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (scalar_t__) ; 
 char** reg_names ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 scalar_t__ rs6000_always_hint ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

char *
FUNC14 (rtx op, const char *label, int reversed, rtx insn)
{
  static char string[64];
  enum rtx_code code = FUNC0 (op);
  rtx cc_reg = FUNC4 (op, 0);
  enum machine_mode mode = FUNC1 (cc_reg);
  int cc_regno = FUNC3 (cc_reg) - CR0_REGNO;
  int need_longbranch = label != NULL && FUNC9 (insn) == 8;
  int really_reversed = reversed ^ need_longbranch;
  char *s = string;
  const char *ccode;
  const char *pred;
  rtx note;

  FUNC13 (code, mode);

  /* Work out which way this really branches.  We could use
     reverse_condition_maybe_unordered here always but this
     makes the resulting assembler clearer.  */
  if (really_reversed)
    {
      /* Reversal of FP compares takes care -- an ordered compare
	 becomes an unordered compare and vice versa.  */
      if (mode == CCFPmode)
	code = FUNC11 (code);
      else
	code = FUNC10 (code);
    }

  if ((TARGET_E500 && !TARGET_FPRS && TARGET_HARD_FLOAT) && mode == CCFPmode)
    {
      /* The efscmp/tst* instructions twiddle bit 2, which maps nicely
	 to the GT bit.  */
      switch (code)
	{
	case EQ:
	  /* Opposite of GT.  */
	  code = GT;
	  break;

	case NE:
	  code = UNLE;
	  break;

	default:
	  FUNC8 ();
	}
    }

  switch (code)
    {
      /* Not all of these are actually distinct opcodes, but
	 we distinguish them for clarity of the resulting assembler.  */
    case NE: case LTGT:
      ccode = "ne"; break;
    case EQ: case UNEQ:
      ccode = "eq"; break;
    case GE: case GEU:
      ccode = "ge"; break;
    case GT: case GTU: case UNGT:
      ccode = "gt"; break;
    case LE: case LEU:
      ccode = "le"; break;
    case LT: case LTU: case UNLT:
      ccode = "lt"; break;
    case UNORDERED: ccode = "un"; break;
    case ORDERED: ccode = "nu"; break;
    case UNGE: ccode = "nl"; break;
    case UNLE: ccode = "ng"; break;
    default:
      FUNC8 ();
    }

  /* Maybe we have a guess as to how likely the branch is.
     The old mnemonics don't have a way to specify this information.  */
  pred = "";
  note = FUNC7 (insn, REG_BR_PROB, NULL_RTX);
  if (note != NULL_RTX)
    {
      /* PROB is the difference from 50%.  */
      int prob = FUNC2 (FUNC4 (note, 0)) - REG_BR_PROB_BASE / 2;

      /* Only hint for highly probable/improbable branches on newer
	 cpus as static prediction overrides processor dynamic
	 prediction.  For older cpus we may as well always hint, but
	 assume not taken for branches that are very close to 50% as a
	 mispredicted taken branch is more expensive than a
	 mispredicted not-taken branch.  */
      if (rs6000_always_hint
	  || (FUNC5 (prob) > REG_BR_PROB_BASE / 100 * 48
	      && FUNC6 (note)))
	{
	  if (FUNC5 (prob) > REG_BR_PROB_BASE / 20
	      && ((prob > 0) ^ need_longbranch))
	    pred = "+";
	  else
	    pred = "-";
	}
    }

  if (label == NULL)
    s += FUNC12 (s, "{b%sr|b%slr%s} ", ccode, ccode, pred);
  else
    s += FUNC12 (s, "{b%s|b%s%s} ", ccode, ccode, pred);

  /* We need to escape any '%' characters in the reg_names string.
     Assume they'd only be the first character....  */
  if (reg_names[cc_regno + CR0_REGNO][0] == '%')
    *s++ = '%';
  s += FUNC12 (s, "%s", reg_names[cc_regno + CR0_REGNO]);

  if (label != NULL)
    {
      /* If the branch distance was too far, we may have to use an
	 unconditional branch to go the distance.  */
      if (need_longbranch)
	s += FUNC12 (s, ",$+8\n\tb %s", label);
      else
	s += FUNC12 (s, ",%s", label);
    }

  return string;
}