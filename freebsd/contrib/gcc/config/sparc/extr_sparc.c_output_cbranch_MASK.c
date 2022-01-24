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
 int CCFPEmode ; 
 int CCFPmode ; 
 int CCX_NOOVmode ; 
 int CCXmode ; 
 int CC_NOOVmode ; 
#define  EQ 145 
#define  GE 144 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
#define  GEU 143 
#define  GT 142 
#define  GTU 141 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
#define  LE 140 
#define  LEU 139 
#define  LT 138 
#define  LTGT 137 
#define  LTU 136 
#define  NE 135 
 int /*<<< orphan*/  NULL_RTX ; 
#define  ORDERED 134 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  REG_BR_PROB ; 
 int REG_BR_PROB_BASE ; 
 scalar_t__ SPARC_FCC_REG ; 
 scalar_t__ SPARC_FIRST_V9_FCC_REG ; 
 scalar_t__ TARGET_V9 ; 
#define  UNEQ 133 
#define  UNGE 132 
#define  UNGT 131 
#define  UNLE 130 
#define  UNLT 129 
#define  UNORDERED 128 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  final_sequence ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 scalar_t__ FUNC17 (char const*) ; 

const char *
FUNC18 (rtx op, rtx dest, int label, int reversed, int annul,
		rtx insn)
{
  static char string[64];
  enum rtx_code code = FUNC0 (op);
  rtx cc_reg = FUNC7 (op, 0);
  enum machine_mode mode = FUNC1 (cc_reg);
  const char *labelno, *branch;
  int spaces = 8, far;
  char *p;

  /* v9 branches are limited to +-1MB.  If it is too far away,
     change

     bne,pt %xcc, .LC30

     to

     be,pn %xcc, .+12
      nop
     ba .LC30

     and

     fbne,a,pn %fcc2, .LC29

     to

     fbe,pt %fcc2, .+16
      nop
     ba .LC29  */

  far = TARGET_V9 && (FUNC11 (insn) >= 3);
  if (reversed ^ far)
    {
      /* Reversal of FP compares takes care -- an ordered compare
	 becomes an unordered compare and vice versa.  */
      if (mode == CCFPmode || mode == CCFPEmode)
	code = FUNC13 (code);
      else
	code = FUNC12 (code);
    }

  /* Start by writing the branch condition.  */
  if (mode == CCFPmode || mode == CCFPEmode)
    {
      switch (code)
	{
	case NE:
	  branch = "fbne";
	  break;
	case EQ:
	  branch = "fbe";
	  break;
	case GE:
	  branch = "fbge";
	  break;
	case GT:
	  branch = "fbg";
	  break;
	case LE:
	  branch = "fble";
	  break;
	case LT:
	  branch = "fbl";
	  break;
	case UNORDERED:
	  branch = "fbu";
	  break;
	case ORDERED:
	  branch = "fbo";
	  break;
	case UNGT:
	  branch = "fbug";
	  break;
	case UNLT:
	  branch = "fbul";
	  break;
	case UNEQ:
	  branch = "fbue";
	  break;
	case UNGE:
	  branch = "fbuge";
	  break;
	case UNLE:
	  branch = "fbule";
	  break;
	case LTGT:
	  branch = "fblg";
	  break;

	default:
	  FUNC10 ();
	}

      /* ??? !v9: FP branches cannot be preceded by another floating point
	 insn.  Because there is currently no concept of pre-delay slots,
	 we can fix this only by always emitting a nop before a floating
	 point branch.  */

      string[0] = '\0';
      if (! TARGET_V9)
	FUNC16 (string, "nop\n\t");
      FUNC14 (string, branch);
    }
  else
    {
      switch (code)
	{
	case NE:
	  branch = "bne";
	  break;
	case EQ:
	  branch = "be";
	  break;
	case GE:
	  if (mode == CC_NOOVmode || mode == CCX_NOOVmode)
	    branch = "bpos";
	  else
	    branch = "bge";
	  break;
	case GT:
	  branch = "bg";
	  break;
	case LE:
	  branch = "ble";
	  break;
	case LT:
	  if (mode == CC_NOOVmode || mode == CCX_NOOVmode)
	    branch = "bneg";
	  else
	    branch = "bl";
	  break;
	case GEU:
	  branch = "bgeu";
	  break;
	case GTU:
	  branch = "bgu";
	  break;
	case LEU:
	  branch = "bleu";
	  break;
	case LTU:
	  branch = "blu";
	  break;

	default:
	  FUNC10 ();
	}
      FUNC16 (string, branch);
    }
  spaces -= FUNC17 (branch);
  p = FUNC15 (string, '\0');

  /* Now add the annulling, the label, and a possible noop.  */
  if (annul && ! far)
    {
      FUNC16 (p, ",a");
      p += 2;
      spaces -= 2;
    }

  if (TARGET_V9)
    {
      rtx note;
      int v8 = 0;

      if (! far && insn && FUNC3 ())
	{
	  int delta = (FUNC2 (FUNC4 (dest))
		       - FUNC2 (FUNC4 (insn)));
	  /* Leave some instructions for "slop".  */
	  if (delta < -260000 || delta >= 260000)
	    v8 = 1;
	}

      if (mode == CCFPmode || mode == CCFPEmode)
	{
	  static char v9_fcc_labelno[] = "%%fccX, ";
	  /* Set the char indicating the number of the fcc reg to use.  */
	  v9_fcc_labelno[5] = FUNC6 (cc_reg) - SPARC_FIRST_V9_FCC_REG + '0';
	  labelno = v9_fcc_labelno;
	  if (v8)
	    {
	      FUNC9 (FUNC6 (cc_reg) == SPARC_FCC_REG);
	      labelno = "";
	    }
	}
      else if (mode == CCXmode || mode == CCX_NOOVmode)
	{
	  labelno = "%%xcc, ";
	  FUNC9 (! v8);
	}
      else
	{
	  labelno = "%%icc, ";
	  if (v8)
	    labelno = "";
	}

      if (*labelno && insn && (note = FUNC8 (insn, REG_BR_PROB, NULL_RTX)))
	{
	  FUNC16 (p,
		  ((FUNC5 (FUNC7 (note, 0)) >= REG_BR_PROB_BASE / 2) ^ far)
		  ? ",pt" : ",pn");
	  p += 3;
	  spaces -= 3;
	}
    }
  else
    labelno = "";

  if (spaces > 0)
    *p++ = '\t';
  else
    *p++ = ' ';
  FUNC16 (p, labelno);
  p = FUNC15 (p, '\0');
  if (far)
    {
      FUNC16 (p, ".+12\n\t nop\n\tb\t");
      /* Skip the next insn if requested or
	 if we know that it will be a nop.  */
      if (annul || ! final_sequence)
        p[3] = '6';
      p += 14;
    }
  *p++ = '%';
  *p++ = 'l';
  *p++ = label + '0';
  *p++ = '%';
  *p++ = '#';
  *p = '\0';

  return string;
}