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
 int DImode ; 
#define  EQ 133 
#define  GE 132 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  GT 131 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
#define  LE 130 
#define  LT 129 
#define  NE 128 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  REG_BR_PROB ; 
 int REG_BR_PROB_BASE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  final_sequence ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (int) ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

const char *
FUNC14 (rtx op, rtx dest, int reg, int label, int reversed,
		 int annul, rtx insn)
{
  static char string[64];
  enum rtx_code code = FUNC0 (op);
  enum machine_mode mode = FUNC1 (FUNC6 (op, 0));
  rtx note;
  int far;
  char *p;

  /* branch on register are limited to +-128KB.  If it is too far away,
     change
     
     brnz,pt %g1, .LC30
     
     to
     
     brz,pn %g1, .+12
      nop
     ba,pt %xcc, .LC30
     
     and
     
     brgez,a,pn %o1, .LC29
     
     to
     
     brlz,pt %o1, .+16
      nop
     ba,pt %xcc, .LC29  */

  far = FUNC10 (insn) >= 3;

  /* If not floating-point or if EQ or NE, we can just reverse the code.  */
  if (reversed ^ far)
    code = FUNC11 (code);

  /* Only 64 bit versions of these instructions exist.  */
  FUNC8 (mode == DImode);

  /* Start by writing the branch condition.  */

  switch (code)
    {
    case NE:
      FUNC13 (string, "brnz");
      break;

    case EQ:
      FUNC13 (string, "brz");
      break;

    case GE:
      FUNC13 (string, "brgez");
      break;

    case LT:
      FUNC13 (string, "brlz");
      break;

    case LE:
      FUNC13 (string, "brlez");
      break;

    case GT:
      FUNC13 (string, "brgz");
      break;

    default:
      FUNC9 ();
    }

  p = FUNC12 (string, '\0');

  /* Now add the annulling, reg, label, and nop.  */
  if (annul && ! far)
    {
      FUNC13 (p, ",a");
      p += 2;
    }

  if (insn && (note = FUNC7 (insn, REG_BR_PROB, NULL_RTX)))
    {
      FUNC13 (p,
	      ((FUNC5 (FUNC6 (note, 0)) >= REG_BR_PROB_BASE / 2) ^ far)
	      ? ",pt" : ",pn");
      p += 3;
    }

  *p = p < string + 8 ? '\t' : ' ';
  p++;
  *p++ = '%';
  *p++ = '0' + reg;
  *p++ = ',';
  *p++ = ' ';
  if (far)
    {
      int veryfar = 1, delta;

      if (FUNC3 ())
	{
	  delta = (FUNC2 (FUNC4 (dest))
		   - FUNC2 (FUNC4 (insn)));
	  /* Leave some instructions for "slop".  */
	  if (delta >= -260000 && delta < 260000)
	    veryfar = 0;
	}

      FUNC13 (p, ".+12\n\t nop\n\t");
      /* Skip the next insn if requested or
	 if we know that it will be a nop.  */
      if (annul || ! final_sequence)
        p[3] = '6';
      p += 12;
      if (veryfar)
	{
	  FUNC13 (p, "b\t");
	  p += 2;
	}
      else
	{
	  FUNC13 (p, "ba,pt\t%%xcc, ");
	  p += 13;
	}
    }
  *p++ = '%';
  *p++ = 'l';
  *p++ = '0' + label;
  *p++ = '%';
  *p++ = '#';
  *p = '\0';

  return string;
}