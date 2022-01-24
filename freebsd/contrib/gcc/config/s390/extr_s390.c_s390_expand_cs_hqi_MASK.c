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
struct alignment_context {int /*<<< orphan*/  shift; int /*<<< orphan*/  modemaski; int /*<<< orphan*/  memsi; scalar_t__ aligned; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  AND ; 
 int /*<<< orphan*/  EQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IOR ; 
 int /*<<< orphan*/  LSHIFTRT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NE ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct alignment_context*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC17 (enum machine_mode mode, rtx target, rtx mem, rtx cmp, rtx new)
{
  struct alignment_context ac;
  rtx cmpv, newv, val, resv, cc;
  rtx res = FUNC9 (SImode);
  rtx csloop = FUNC8 ();
  rtx csend = FUNC8 ();

  FUNC7 (FUNC11 (target, VOIDmode));
  FUNC7 (FUNC1 (mem));

  FUNC10 (&ac, mem, mode);

  /* Shift the values to the correct bit positions.  */
  if (!(ac.aligned && FUNC1 (cmp)))
    cmp = FUNC15 (cmp, mode, ac.shift);
  if (!(ac.aligned && FUNC1 (new)))
    new = FUNC15 (new, mode, ac.shift);

  /* Load full word.  Subsequent loads are performed by CS.  */
  val = FUNC5 (SImode, AND, ac.memsi, ac.modemaski,
			     NULL_RTX, 1, OPTAB_DIRECT);

  /* Start CS loop.  */
  FUNC3 (csloop);
  /* val = "<mem>00..0<mem>" 
   * cmp = "00..0<cmp>00..0"
   * new = "00..0<new>00..0" 
   */

  /* Patch cmp and new with val at correct position.  */
  if (ac.aligned && FUNC1 (cmp))
    {
      cmpv = FUNC6 (SImode, val);
      FUNC16 (cmpv, FUNC0 (mode), 0, SImode, cmp);
    }
  else
    cmpv = FUNC6 (SImode, FUNC5 (SImode, IOR, cmp, val,
						   NULL_RTX, 1, OPTAB_DIRECT));
  if (ac.aligned && FUNC1 (new))
    {
      newv = FUNC6 (SImode, val);
      FUNC16 (newv, FUNC0 (mode), 0, SImode, new);
    }
  else
    newv = FUNC6 (SImode, FUNC5 (SImode, IOR, new, val,
						   NULL_RTX, 1, OPTAB_DIRECT));

  /* Jump to end if we're done (likely?).  */
  FUNC14 (csend, FUNC13 (EQ, res, ac.memsi,
						     cmpv, newv));

  /* Check for changes outside mode.  */
  resv = FUNC5 (SImode, AND, res, ac.modemaski, 
			      NULL_RTX, 1, OPTAB_DIRECT);
  cc = FUNC12 (NE, resv, val); 
  FUNC4 (val, resv);
  /* Loop internal if so.  */
  FUNC14 (csloop, cc);

  FUNC3 (csend);
  
  /* Return the correct part of the bitfield.  */
  FUNC2 (target, FUNC5 (SImode, LSHIFTRT, res, ac.shift, 
					     NULL_RTX, 1, OPTAB_DIRECT), 1);
}