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

/* Variables and functions */
#define  CM_EMBMEDANY 131 
#define  CM_MEDANY 130 
#define  CM_MEDLOW 129 
#define  CM_MEDMID 128 
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ TImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,scalar_t__) ; 
 int sparc_cmodel ; 

void
FUNC29 (rtx op0, rtx op1, rtx temp)
{
  rtx temp1, temp2, temp3, temp4, temp5;
  rtx ti_temp = 0;

  if (temp && FUNC1 (temp) == TImode)
    {
      ti_temp = temp;
      temp = FUNC19 (DImode, FUNC2 (temp));
    }

  /* SPARC-V9 code-model support.  */
  switch (sparc_cmodel)
    {
    case CM_MEDLOW:
      /* The range spanned by all instructions in the object is less
	 than 2^31 bytes (2GB) and the distance from any instruction
	 to the location of the label _GLOBAL_OFFSET_TABLE_ is less
	 than 2^31 bytes (2GB).

	 The executable must be in the low 4TB of the virtual address
	 space.

	 sethi	%hi(symbol), %temp1
	 or	%temp1, %lo(symbol), %reg  */
      if (temp)
	temp1 = temp;  /* op0 is allowed.  */
      else
	temp1 = FUNC14 (DImode);

      FUNC4 (FUNC20 (VOIDmode, temp1, FUNC16 (DImode, op1)));
      FUNC4 (FUNC20 (VOIDmode, op0, FUNC17 (DImode, temp1, op1)));
      break;

    case CM_MEDMID:
      /* The range spanned by all instructions in the object is less
	 than 2^31 bytes (2GB) and the distance from any instruction
	 to the location of the label _GLOBAL_OFFSET_TABLE_ is less
	 than 2^31 bytes (2GB).

	 The executable must be in the low 16TB of the virtual address
	 space.

	 sethi	%h44(symbol), %temp1
	 or	%temp1, %m44(symbol), %temp2
	 sllx	%temp2, 12, %temp3
	 or	%temp3, %l44(symbol), %reg  */
      if (temp)
	{
	  temp1 = op0;
	  temp2 = op0;
	  temp3 = temp;  /* op0 is allowed.  */
	}
      else
	{
	  temp1 = FUNC14 (DImode);
	  temp2 = FUNC14 (DImode);
	  temp3 = FUNC14 (DImode);
	}

      FUNC4 (FUNC21 (temp1, op1));
      FUNC4 (FUNC27 (temp2, temp1, op1));
      FUNC4 (FUNC20 (VOIDmode, temp3,
			      FUNC15 (DImode, temp2, FUNC0 (12))));
      FUNC4 (FUNC24 (op0, temp3, op1));
      break;

    case CM_MEDANY:
      /* The range spanned by all instructions in the object is less
	 than 2^31 bytes (2GB) and the distance from any instruction
	 to the location of the label _GLOBAL_OFFSET_TABLE_ is less
	 than 2^31 bytes (2GB).

	 The executable can be placed anywhere in the virtual address
	 space.

	 sethi	%hh(symbol), %temp1
	 sethi	%lm(symbol), %temp2
	 or	%temp1, %hm(symbol), %temp3
	 sllx	%temp3, 32, %temp4
	 or	%temp4, %temp2, %temp5
	 or	%temp5, %lo(symbol), %reg  */
      if (temp)
	{
	  /* It is possible that one of the registers we got for operands[2]
	     might coincide with that of operands[0] (which is why we made
	     it TImode).  Pick the other one to use as our scratch.  */
	  if (FUNC28 (temp, op0))
	    {
	      FUNC5 (ti_temp);
	      temp = FUNC19 (DImode, FUNC2 (temp) + 1);
	    }
	  temp1 = op0;
	  temp2 = temp;  /* op0 is _not_ allowed, see above.  */
	  temp3 = op0;
	  temp4 = op0;
	  temp5 = op0;
	}
      else
	{
	  temp1 = FUNC14 (DImode);
	  temp2 = FUNC14 (DImode);
	  temp3 = FUNC14 (DImode);
	  temp4 = FUNC14 (DImode);
	  temp5 = FUNC14 (DImode);
	}

      FUNC4 (FUNC22 (temp1, op1));
      FUNC4 (FUNC25 (temp2, op1));
      FUNC4 (FUNC23 (temp3, temp1, op1));
      FUNC4 (FUNC20 (VOIDmode, temp4,
			      FUNC15 (DImode, temp3, FUNC0 (32))));
      FUNC4 (FUNC20 (VOIDmode, temp5,
			      FUNC18 (DImode, temp4, temp2)));
      FUNC4 (FUNC26 (op0, temp5, op1));
      break;

    case CM_EMBMEDANY:
      /* Old old old backwards compatibility kruft here.
	 Essentially it is MEDLOW with a fixed 64-bit
	 virtual base added to all data segment addresses.
	 Text-segment stuff is computed like MEDANY, we can't
	 reuse the code above because the relocation knobs
	 look different.

	 Data segment:	sethi	%hi(symbol), %temp1
			add	%temp1, EMBMEDANY_BASE_REG, %temp2
			or	%temp2, %lo(symbol), %reg  */
      if (FUNC3 (op1, FUNC1 (op1)))
	{
	  if (temp)
	    {
	      temp1 = temp;  /* op0 is allowed.  */
	      temp2 = op0;
	    }
	  else
	    {
	      temp1 = FUNC14 (DImode);
	      temp2 = FUNC14 (DImode);
	    }

	  FUNC4 (FUNC9 (temp1, op1));
	  FUNC4 (FUNC7 (temp2, temp1));
	  FUNC4 (FUNC8 (op0, temp2, op1));
	}

      /* Text segment:	sethi	%uhi(symbol), %temp1
			sethi	%hi(symbol), %temp2
			or	%temp1, %ulo(symbol), %temp3
			sllx	%temp3, 32, %temp4
			or	%temp4, %temp2, %temp5
			or	%temp5, %lo(symbol), %reg  */
      else
	{
	  if (temp)
	    {
	      /* It is possible that one of the registers we got for operands[2]
		 might coincide with that of operands[0] (which is why we made
		 it TImode).  Pick the other one to use as our scratch.  */
	      if (FUNC28 (temp, op0))
		{
		  FUNC5 (ti_temp);
		  temp = FUNC19 (DImode, FUNC2 (temp) + 1);
		}
	      temp1 = op0;
	      temp2 = temp;  /* op0 is _not_ allowed, see above.  */
	      temp3 = op0;
	      temp4 = op0;
	      temp5 = op0;
	    }
	  else
	    {
	      temp1 = FUNC14 (DImode);
	      temp2 = FUNC14 (DImode);
	      temp3 = FUNC14 (DImode);
	      temp4 = FUNC14 (DImode);
	      temp5 = FUNC14 (DImode);
	    }

	  FUNC4 (FUNC12 (temp1, op1));
	  FUNC4 (FUNC10  (temp2, op1));
	  FUNC4 (FUNC13 (temp3, temp1, op1));
	  FUNC4 (FUNC20 (VOIDmode, temp4,
				  FUNC15 (DImode, temp3, FUNC0 (32))));
	  FUNC4 (FUNC20 (VOIDmode, temp5,
				  FUNC18 (DImode, temp4, temp2)));
	  FUNC4 (FUNC11  (op0, temp5, op1));
	}
      break;

    default:
      FUNC6 ();
    }
}