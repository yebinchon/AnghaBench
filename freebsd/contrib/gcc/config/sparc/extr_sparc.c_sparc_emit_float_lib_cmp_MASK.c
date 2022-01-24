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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int DImode ; 
#define  EQ 141 
#define  GE 140 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  GT 139 
 int /*<<< orphan*/  LCT_NORMAL ; 
#define  LE 138 
#define  LT 137 
#define  LTGT 136 
 scalar_t__ MEM ; 
#define  NE 135 
 int /*<<< orphan*/  NULL_RTX ; 
#define  ORDERED 134 
 int /*<<< orphan*/  Pmode ; 
 int SImode ; 
 int /*<<< orphan*/  TARGET_ARCH32 ; 
 scalar_t__ TARGET_ARCH64 ; 
 int /*<<< orphan*/  TFmode ; 
#define  UNEQ 133 
#define  UNGE 132 
#define  UNGT 131 
#define  UNLE 130 
#define  UNLT 129 
#define  UNORDERED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  const2_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

void
FUNC17 (rtx x, rtx y, enum rtx_code comparison)
{
  const char *qpfunc;
  rtx slot0, slot1, result, tem, tem2;
  enum machine_mode mode;

  switch (comparison)
    {
    case EQ:
      qpfunc = (TARGET_ARCH64) ? "_Qp_feq" : "_Q_feq";
      break;

    case NE:
      qpfunc = (TARGET_ARCH64) ? "_Qp_fne" : "_Q_fne";
      break;

    case GT:
      qpfunc = (TARGET_ARCH64) ? "_Qp_fgt" : "_Q_fgt";
      break;

    case GE:
      qpfunc = (TARGET_ARCH64) ? "_Qp_fge" : "_Q_fge";
      break;

    case LT:
      qpfunc = (TARGET_ARCH64) ? "_Qp_flt" : "_Q_flt";
      break;

    case LE:
      qpfunc = (TARGET_ARCH64) ? "_Qp_fle" : "_Q_fle";
      break;

    case ORDERED:
    case UNORDERED:
    case UNGT:
    case UNLT:
    case UNEQ:
    case UNGE:
    case UNLE:
    case LTGT:
      qpfunc = (TARGET_ARCH64) ? "_Qp_cmp" : "_Q_cmp";
      break;

    default:
      FUNC9 ();
    }

  if (TARGET_ARCH64)
    {
      if (FUNC1 (x) != MEM)
	{
	  slot0 = FUNC4 (TFmode, FUNC2(TFmode), 0);
	  FUNC8 (slot0, x);
	}
      else
	slot0 = x;

      if (FUNC1 (y) != MEM)
	{
	  slot1 = FUNC4 (TFmode, FUNC2(TFmode), 0);
	  FUNC8 (slot1, y);
	}
      else
	slot1 = y;

      FUNC7 (FUNC15 (Pmode, qpfunc), LCT_NORMAL,
			 DImode, 2,
			 FUNC3 (slot0, 0), Pmode,
			 FUNC3 (slot1, 0), Pmode);

      mode = DImode;
    }
  else
    {
      FUNC7 (FUNC15 (Pmode, qpfunc), LCT_NORMAL,
			 SImode, 2,
			 x, TFmode, y, TFmode);

      mode = SImode;
    }


  /* Immediately move the result of the libcall into a pseudo
     register so reload doesn't clobber the value if it needs
     the return register for a spill reg.  */
  result = FUNC14 (mode);
  FUNC8 (result, FUNC16 (mode));

  switch (comparison)
    {
    default:
      FUNC5 (result, const0_rtx, NE, NULL_RTX, mode, 0);
      break;
    case ORDERED:
    case UNORDERED:
      FUNC5 (result, FUNC0(3), comparison == UNORDERED ? EQ : NE,
		     NULL_RTX, mode, 0);
      break;
    case UNGT:
    case UNGE:
      FUNC5 (result, const1_rtx,
		     comparison == UNGT ? GT : NE, NULL_RTX, mode, 0);
      break;
    case UNLE:
      FUNC5 (result, const2_rtx, NE, NULL_RTX, mode, 0);
      break;
    case UNLT:
      tem = FUNC14 (mode);
      if (TARGET_ARCH32)
	FUNC6 (FUNC13 (tem, result, const1_rtx));
      else
	FUNC6 (FUNC12 (tem, result, const1_rtx));
      FUNC5 (tem, const0_rtx, NE, NULL_RTX, mode, 0);
      break;
    case UNEQ:
    case LTGT:
      tem = FUNC14 (mode);
      if (TARGET_ARCH32)
	FUNC6 (FUNC11 (tem, result, const1_rtx));
      else
	FUNC6 (FUNC10 (tem, result, const1_rtx));
      tem2 = FUNC14 (mode);
      if (TARGET_ARCH32)
	FUNC6 (FUNC13 (tem2, tem, const2_rtx));
      else
	FUNC6 (FUNC12 (tem2, tem, const2_rtx));
      FUNC5 (tem2, const0_rtx, comparison == UNEQ ? EQ : NE,
		     NULL_RTX, mode, 0);
      break;
    }
}