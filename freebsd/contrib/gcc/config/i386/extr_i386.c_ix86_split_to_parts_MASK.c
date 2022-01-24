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
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_VECTOR ; 
#define  DFmode 129 
 int DImode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 scalar_t__ MEM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,long*) ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int SImode ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 int TFmode ; 
 int TImode ; 
 int /*<<< orphan*/  VOIDmode ; 
#define  XFmode 128 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (long,int) ; 
 int /*<<< orphan*/ * FUNC16 (int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC17 (long,long,int) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (long*,int /*<<< orphan*/ *,int) ; 
 int reload_completed ; 
 int /*<<< orphan*/ * FUNC23 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC26 (rtx operand, rtx *parts, enum machine_mode mode)
{
  int size;

  if (!TARGET_64BIT)
    size = mode==XFmode ? 3 : FUNC2 (mode) / 4;
  else
    size = (FUNC2 (mode) + 4) / 8;

  FUNC13 (FUNC0 (operand) != REG || !FUNC4 (FUNC9 (operand)));
  FUNC13 (size >= 2 && size <= 3);

  /* Optimize constant pool reference to immediates.  This is used by fp
     moves, that force all constants to memory to allow combining.  */
  if (FUNC0 (operand) == MEM && FUNC3 (operand))
    {
      rtx tmp = FUNC19 (operand);
      if (tmp)
	operand = tmp;
    }

  if (FUNC0 (operand) == MEM && !FUNC20 (operand))
    {
      /* The only non-offsetable memories we handle are pushes.  */
      int ok = FUNC21 (operand, VOIDmode);

      FUNC13 (ok);

      operand = FUNC12 (operand);
      FUNC5 (operand, Pmode);
      parts[0] = parts[1] = parts[2] = operand;
      return size;
    }

  if (FUNC0 (operand) == CONST_VECTOR)
    {
      enum machine_mode imode = FUNC18 (mode);
      /* Caution: if we looked through a constant pool memory above,
	 the operand may actually have a different mode now.  That's
	 ok, since we want to pun this all the way back to an integer.  */
      operand = FUNC23 (imode, operand, FUNC1 (operand), 0);
      FUNC13 (operand != NULL);
      mode = imode;
    }

  if (!TARGET_64BIT)
    {
      if (mode == DImode)
	FUNC24 (&operand, 1, &parts[0], &parts[1]);
      else
	{
	  if (FUNC10 (operand))
	    {
	      FUNC13 (reload_completed);
	      parts[0] = FUNC16 (SImode, FUNC9 (operand) + 0);
	      parts[1] = FUNC16 (SImode, FUNC9 (operand) + 1);
	      if (size == 3)
		parts[2] = FUNC16 (SImode, FUNC9 (operand) + 2);
	    }
	  else if (FUNC20 (operand))
	    {
	      operand = FUNC11 (operand, SImode, 0);
	      parts[0] = operand;
	      parts[1] = FUNC11 (operand, SImode, 4);
	      if (size == 3)
		parts[2] = FUNC11 (operand, SImode, 8);
	    }
	  else if (FUNC0 (operand) == CONST_DOUBLE)
	    {
	      REAL_VALUE_TYPE r;
	      long l[4];

	      FUNC6 (r, operand);
	      switch (mode)
		{
		case XFmode:
		  FUNC8 (r, l);
		  parts[2] = FUNC15 (l[2], SImode);
		  break;
		case DFmode:
		  FUNC7 (r, l);
		  break;
		default:
		  FUNC14 ();
		}
	      parts[1] = FUNC15 (l[1], SImode);
	      parts[0] = FUNC15 (l[0], SImode);
	    }
	  else
	    FUNC14 ();
	}
    }
  else
    {
      if (mode == TImode)
	FUNC25 (&operand, 1, &parts[0], &parts[1]);
      if (mode == XFmode || mode == TFmode)
	{
	  enum machine_mode upper_mode = mode==XFmode ? SImode : DImode;
	  if (FUNC10 (operand))
	    {
	      FUNC13 (reload_completed);
	      parts[0] = FUNC16 (DImode, FUNC9 (operand) + 0);
	      parts[1] = FUNC16 (upper_mode, FUNC9 (operand) + 1);
	    }
	  else if (FUNC20 (operand))
	    {
	      operand = FUNC11 (operand, DImode, 0);
	      parts[0] = operand;
	      parts[1] = FUNC11 (operand, upper_mode, 8);
	    }
	  else if (FUNC0 (operand) == CONST_DOUBLE)
	    {
	      REAL_VALUE_TYPE r;
	      long l[4];

	      FUNC6 (r, operand);
	      FUNC22 (l, &r, mode);

	      /* Do not use shift by 32 to avoid warning on 32bit systems.  */
	      if (HOST_BITS_PER_WIDE_INT >= 64)
	        parts[0]
		  = FUNC15
		      ((l[0] & (((HOST_WIDE_INT) 2 << 31) - 1))
		       + ((((HOST_WIDE_INT) l[1]) << 31) << 1),
		       DImode);
	      else
	        parts[0] = FUNC17 (l[0], l[1], DImode);

	      if (upper_mode == SImode)
	        parts[1] = FUNC15 (l[2], SImode);
	      else if (HOST_BITS_PER_WIDE_INT >= 64)
	        parts[1]
		  = FUNC15
		      ((l[2] & (((HOST_WIDE_INT) 2 << 31) - 1))
		       + ((((HOST_WIDE_INT) l[3]) << 31) << 1),
		       DImode);
	      else
	        parts[1] = FUNC17 (l[2], l[3], DImode);
	    }
	  else
	    FUNC14 ();
	}
    }

  return size;
}