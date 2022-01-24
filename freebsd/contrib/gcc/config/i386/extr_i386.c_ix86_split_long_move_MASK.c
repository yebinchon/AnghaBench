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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int CONST_INT ; 
 scalar_t__ DImode ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
#define  MEM 129 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ Pmode ; 
#define  REG 128 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ SImode ; 
 int SYMBOL_REF ; 
 scalar_t__ TARGET_128BIT_LONG_DOUBLE ; 
 scalar_t__ TARGET_64BIT ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int XFmode ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ optimize_size ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

void
FUNC28 (rtx operands[])
{
  rtx part[2][3];
  int nparts;
  int push = 0;
  int collisions = 0;
  enum machine_mode mode = FUNC3 (operands[0]);

  /* The DFmode expanders may ask us to move double.
     For 64bit target this is single move.  By hiding the fact
     here we simplify i386.md splitters.  */
  if (FUNC4 (FUNC3 (operands[0])) == 8 && TARGET_64BIT)
    {
      /* Optimize constant pool reference to immediates.  This is used by
	 fp moves, that force all constants to memory to allow combining.  */

      if (FUNC2 (operands[1]) == MEM
	  && FUNC2 (FUNC9 (operands[1], 0)) == SYMBOL_REF
	  && FUNC0 (FUNC9 (operands[1], 0)))
	operands[1] = FUNC21 (FUNC9 (operands[1], 0));
      if (FUNC25 (operands[0], VOIDmode))
	{
	  operands[0] = FUNC12 (operands[0]);
	  FUNC6 (operands[0], Pmode);
	}
      else
        operands[0] = FUNC18 (DImode, operands[0]);
      operands[1] = FUNC18 (DImode, operands[1]);
      FUNC14 (operands[0], operands[1]);
      return;
    }

  /* The only non-offsettable memory we handle is push.  */
  if (FUNC25 (operands[0], VOIDmode))
    push = 1;
  else
    FUNC15 (FUNC2 (operands[0]) != MEM
		|| FUNC23 (operands[0]));

  nparts = FUNC22 (operands[1], part[1], FUNC3 (operands[0]));
  FUNC22 (operands[0], part[0], FUNC3 (operands[0]));

  /* When emitting push, take care for source operands on the stack.  */
  if (push && FUNC2 (operands[1]) == MEM
      && FUNC26 (stack_pointer_rtx, operands[1]))
    {
      if (nparts == 3)
	part[1][1] = FUNC11 (part[1][1], FUNC3 (part[1][1]),
				     FUNC9 (part[1][2], 0));
      part[1][0] = FUNC11 (part[1][0], FUNC3 (part[1][0]),
				   FUNC9 (part[1][1], 0));
    }

  /* We need to do copy in the right order in case an address register
     of the source overlaps the destination.  */
  if (FUNC8 (part[0][0]) && FUNC2 (part[1][0]) == MEM)
    {
      if (FUNC26 (part[0][0], FUNC9 (part[1][0], 0)))
	collisions++;
      if (FUNC26 (part[0][1], FUNC9 (part[1][0], 0)))
	collisions++;
      if (nparts == 3
	  && FUNC26 (part[0][2], FUNC9 (part[1][0], 0)))
	collisions++;

      /* Collision in the middle part can be handled by reordering.  */
      if (collisions == 1 && nparts == 3
	  && FUNC26 (part[0][1], FUNC9 (part[1][0], 0)))
	{
	  rtx tmp;
	  tmp = part[0][1]; part[0][1] = part[0][2]; part[0][2] = tmp;
	  tmp = part[1][1]; part[1][1] = part[1][2]; part[1][2] = tmp;
	}

      /* If there are more collisions, we can't handle it by reordering.
	 Do an lea to the last part and use only one colliding move.  */
      else if (collisions > 1)
	{
	  rtx base;

	  collisions = 1;

	  base = part[0][nparts - 1];

	  /* Handle the case when the last part isn't valid for lea.
	     Happens in 64-bit mode storing the 12-byte XFmode.  */
	  if (FUNC3 (base) != Pmode)
	    base = FUNC19 (Pmode, FUNC7 (base));

	  FUNC13 (FUNC20 (VOIDmode, base, FUNC9 (part[1][0], 0)));
	  part[1][0] = FUNC27 (part[1][0], base);
	  part[1][1] = FUNC27 (part[1][1],
				      FUNC24 (base, UNITS_PER_WORD));
	  if (nparts == 3)
	    part[1][2] = FUNC27 (part[1][2],
				      FUNC24 (base, 8));
	}
    }

  if (push)
    {
      if (!TARGET_64BIT)
	{
	  if (nparts == 3)
	    {
	      if (TARGET_128BIT_LONG_DOUBLE && mode == XFmode)
                FUNC13 (FUNC17 (stack_pointer_rtx, stack_pointer_rtx, FUNC1 (-4)));
	      FUNC14 (part[0][2], part[1][2]);
	    }
	}
      else
	{
	  /* In 64bit mode we don't have 32bit push available.  In case this is
	     register, it is OK - we will just use larger counterpart.  We also
	     retype memory - these comes from attempt to avoid REX prefix on
	     moving of second half of TFmode value.  */
	  if (FUNC3 (part[1][1]) == SImode)
	    {
	      switch (FUNC2 (part[1][1]))
		{
		case MEM:
		  part[1][1] = FUNC10 (part[1][1], DImode, 0);
		  break;

		case REG:
		  part[1][1] = FUNC19 (DImode, FUNC7 (part[1][1]));
		  break;

		default:
		  FUNC16 ();
		}

	      if (FUNC3 (part[1][0]) == SImode)
		part[1][0] = part[1][1];
	    }
	}
      FUNC14 (part[0][1], part[1][1]);
      FUNC14 (part[0][0], part[1][0]);
      return;
    }

  /* Choose correct order to not overwrite the source before it is copied.  */
  if ((FUNC8 (part[0][0])
       && FUNC8 (part[1][1])
       && (FUNC7 (part[0][0]) == FUNC7 (part[1][1])
	   || (nparts == 3
	       && FUNC7 (part[0][0]) == FUNC7 (part[1][2]))))
      || (collisions > 0
	  && FUNC26 (part[0][0], FUNC9 (part[1][0], 0))))
    {
      if (nparts == 3)
	{
	  operands[2] = part[0][2];
	  operands[3] = part[0][1];
	  operands[4] = part[0][0];
	  operands[5] = part[1][2];
	  operands[6] = part[1][1];
	  operands[7] = part[1][0];
	}
      else
	{
	  operands[2] = part[0][1];
	  operands[3] = part[0][0];
	  operands[5] = part[1][1];
	  operands[6] = part[1][0];
	}
    }
  else
    {
      if (nparts == 3)
	{
	  operands[2] = part[0][0];
	  operands[3] = part[0][1];
	  operands[4] = part[0][2];
	  operands[5] = part[1][0];
	  operands[6] = part[1][1];
	  operands[7] = part[1][2];
	}
      else
	{
	  operands[2] = part[0][0];
	  operands[3] = part[0][1];
	  operands[5] = part[1][0];
	  operands[6] = part[1][1];
	}
    }

  /* If optimizing for size, attempt to locally unCSE nonzero constants.  */
  if (optimize_size)
    {
      if (FUNC2 (operands[5]) == CONST_INT
	  && operands[5] != const0_rtx
	  && FUNC8 (operands[2]))
	{
	  if (FUNC2 (operands[6]) == CONST_INT
	      && FUNC5 (operands[6]) == FUNC5 (operands[5]))
	    operands[6] = operands[2];

	  if (nparts == 3
	      && FUNC2 (operands[7]) == CONST_INT
	      && FUNC5 (operands[7]) == FUNC5 (operands[5]))
	    operands[7] = operands[2];
	}

      if (nparts == 3
	  && FUNC2 (operands[6]) == CONST_INT
	  && operands[6] != const0_rtx
	  && FUNC8 (operands[3])
	  && FUNC2 (operands[7]) == CONST_INT
	  && FUNC5 (operands[7]) == FUNC5 (operands[6]))
	operands[7] = operands[3];
    }

  FUNC14 (operands[2], operands[5]);
  FUNC14 (operands[3], operands[6]);
  if (nparts == 3)
    FUNC14 (operands[4], operands[7]);

  return;
}