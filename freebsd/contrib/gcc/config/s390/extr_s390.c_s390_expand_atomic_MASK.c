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
struct alignment_context {scalar_t__ shift; int /*<<< orphan*/  memsi; scalar_t__ modemask; scalar_t__ modemaski; scalar_t__ aligned; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  AND 134 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  IOR 133 
 int const LSHIFTRT ; 
 int FUNC1 (scalar_t__) ; 
#define  MINUS 132 
#define  MULT 131 
 int /*<<< orphan*/  NE ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
#define  PLUS 130 
#define  SET 129 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  VOIDmode ; 
#define  XOR 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int const,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct alignment_context*,scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC17 (enum machine_mode mode, enum rtx_code code,
		    rtx target, rtx mem, rtx val, bool after)
{
  struct alignment_context ac;
  rtx cmp;
  rtx new = FUNC10 (SImode);
  rtx orig = FUNC10 (SImode);
  rtx csloop = FUNC9 ();

  FUNC7 (!target || FUNC12 (target, VOIDmode));
  FUNC7 (FUNC1 (mem));

  FUNC11 (&ac, mem, mode);

  /* Shift val to the correct bit positions.
     Preserve "icm", but prevent "ex icm".  */
  if (!(ac.aligned && code == SET && FUNC1 (val)))
    val = FUNC15 (val, mode, ac.shift);

  /* Further preparation insns.  */
  if (code == PLUS || code == MINUS)
    FUNC4 (orig, val);
  else if (code == MULT || code == AND) /* val = "11..1<val>11..1" */
    val = FUNC5 (SImode, XOR, val, ac.modemaski,
			       NULL_RTX, 1, OPTAB_DIRECT);

  /* Load full word.  Subsequent loads are performed by CS.  */
  cmp = FUNC6 (SImode, ac.memsi);

  /* Start CS loop.  */
  FUNC3 (csloop);
  FUNC4 (new, cmp);

  /* Patch new with val at correct position.  */
  switch (code)
    {
    case PLUS:
    case MINUS:
      val = FUNC5 (SImode, code, new, orig,
				 NULL_RTX, 1, OPTAB_DIRECT);
      val = FUNC5 (SImode, AND, val, ac.modemask,
				 NULL_RTX, 1, OPTAB_DIRECT);
      /* FALLTHRU */
    case SET: 
      if (ac.aligned && FUNC1 (val))
	FUNC16 (new, FUNC0 (mode), 0, SImode, val);
      else
	{
	  new = FUNC5 (SImode, AND, new, ac.modemaski,
				     NULL_RTX, 1, OPTAB_DIRECT);
	  new = FUNC5 (SImode, IOR, new, val,
				     NULL_RTX, 1, OPTAB_DIRECT);
	}
      break;
    case AND:
    case IOR:
    case XOR:
      new = FUNC5 (SImode, code, new, val,
				 NULL_RTX, 1, OPTAB_DIRECT);
      break;
    case MULT: /* NAND */
      new = FUNC5 (SImode, XOR, new, ac.modemask,
				 NULL_RTX, 1, OPTAB_DIRECT);
      new = FUNC5 (SImode, AND, new, val,
				 NULL_RTX, 1, OPTAB_DIRECT);
      break;
    default:
      FUNC8 ();
    }

  FUNC14 (csloop, FUNC13 (NE, cmp,
						      ac.memsi, cmp, new));

  /* Return the correct part of the bitfield.  */
  if (target)
    FUNC2 (target, FUNC5 (SImode, LSHIFTRT,
					       after ? new : cmp, ac.shift,
					       NULL_RTX, 1, OPTAB_DIRECT), 1);
}