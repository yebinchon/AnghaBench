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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ NULL_RTX ; 
 size_t PIC_OFFSET_TABLE_REGNUM ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ TARGET_CPU_ZARCH ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ UNSPEC ; 
#define  UNSPEC_GOT 132 
#define  UNSPEC_GOTENT 131 
#define  UNSPEC_GOTOFF 130 
#define  UNSPEC_PLT 129 
#define  UNSPEC_PLTOFF 128 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ const1_rtx ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int flag_pic ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 scalar_t__ FUNC22 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ pic_offset_table_rtx ; 
 scalar_t__ FUNC23 (scalar_t__,int) ; 
 int* regs_ever_live ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,scalar_t__) ; 

rtx
FUNC25 (rtx orig, rtx reg)
{
  rtx addr = orig;
  rtx new = orig;
  rtx base;

  FUNC14 (!FUNC6 (addr));

  if (FUNC3 (addr) == LABEL_REF
      || (FUNC3 (addr) == SYMBOL_REF && FUNC5 (addr)))
    {
      /* This is a local symbol.  */
      if (TARGET_CPU_ZARCH && FUNC22 (addr, VOIDmode))
        {
          /* Access local symbols PC-relative via LARL.
             This is the same as in the non-PIC case, so it is
             handled automatically ...  */
        }
      else
        {
          /* Access local symbols relative to the GOT.  */

          rtx temp = reg? reg : FUNC17 (Pmode);

	  if (reload_in_progress || reload_completed)
	    regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

          addr = FUNC21 (Pmode, FUNC18 (1, addr), UNSPEC_GOTOFF);
          addr = FUNC19 (Pmode, addr);
          addr = FUNC12 (Pmode, addr);
	  FUNC11 (temp, addr);

          new = FUNC20 (Pmode, pic_offset_table_rtx, temp);
          if (reg != 0)
            {
              FUNC24 (reg, new);
              new = reg;
            }
        }
    }
  else if (FUNC3 (addr) == SYMBOL_REF)
    {
      if (reg == 0)
        reg = FUNC17 (Pmode);

      if (flag_pic == 1)
        {
          /* Assume GOT offset < 4k.  This is handled the same way
             in both 31- and 64-bit code (@GOT).  */

	  if (reload_in_progress || reload_completed)
	    regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

          new = FUNC21 (Pmode, FUNC18 (1, addr), UNSPEC_GOT);
          new = FUNC19 (Pmode, new);
          new = FUNC20 (Pmode, pic_offset_table_rtx, new);
          new = FUNC16 (Pmode, new);
          FUNC11 (reg, new);
          new = reg;
        }
      else if (TARGET_CPU_ZARCH)
        {
          /* If the GOT offset might be >= 4k, we determine the position
             of the GOT entry via a PC-relative LARL (@GOTENT).  */

          rtx temp = FUNC17 (Pmode);

          new = FUNC21 (Pmode, FUNC18 (1, addr), UNSPEC_GOTENT);
          new = FUNC19 (Pmode, new);
          FUNC11 (temp, new);

          new = FUNC16 (Pmode, temp);
          FUNC11 (reg, new);
          new = reg;
        }
      else
        {
          /* If the GOT offset might be >= 4k, we have to load it
             from the literal pool (@GOT).  */

          rtx temp = FUNC17 (Pmode);

	  if (reload_in_progress || reload_completed)
	    regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

          addr = FUNC21 (Pmode, FUNC18 (1, addr), UNSPEC_GOT);
          addr = FUNC19 (Pmode, addr);
          addr = FUNC12 (Pmode, addr);
          FUNC11 (temp, addr);

          new = FUNC20 (Pmode, pic_offset_table_rtx, temp);
          new = FUNC16 (Pmode, new);
          FUNC11 (reg, new);
          new = reg;
        }
    }
  else
    {
      if (FUNC3 (addr) == CONST)
	{
	  addr = FUNC7 (addr, 0);
	  if (FUNC3 (addr) == UNSPEC)
	    {
	      FUNC14 (FUNC10 (addr, 0) == 1);
              switch (FUNC8 (addr, 1))
                {
                  /* If someone moved a GOT-relative UNSPEC
                     out of the literal pool, force them back in.  */
                  case UNSPEC_GOTOFF:
                  case UNSPEC_PLTOFF:
                    new = FUNC12 (Pmode, orig);
                    break;

                  /* @GOT is OK as is if small.  */
		  case UNSPEC_GOT:
		    if (flag_pic == 2)
		      new = FUNC12 (Pmode, orig);
		    break;

                  /* @GOTENT is OK as is.  */
                  case UNSPEC_GOTENT:
                    break;

                  /* @PLT is OK as is on 64-bit, must be converted to
                     GOT-relative @PLTOFF on 31-bit.  */
                  case UNSPEC_PLT:
                    if (!TARGET_CPU_ZARCH)
                      {
                        rtx temp = reg? reg : FUNC17 (Pmode);

			if (reload_in_progress || reload_completed)
			  regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

                        addr = FUNC9 (addr, 0, 0);
                        addr = FUNC21 (Pmode, FUNC18 (1, addr),
					       UNSPEC_PLTOFF);
                        addr = FUNC19 (Pmode, addr);
                        addr = FUNC12 (Pmode, addr);
	                FUNC11 (temp, addr);

                        new = FUNC20 (Pmode, pic_offset_table_rtx, temp);
                        if (reg != 0)
                          {
                            FUNC24 (reg, new);
                            new = reg;
                          }
                      }
                    break;

                  /* Everything else cannot happen.  */
                  default:
                    FUNC15 ();
                }
	    }
	  else 
	    FUNC14 (FUNC3 (addr) == PLUS);
	}
      if (FUNC3 (addr) == PLUS)
	{
	  rtx op0 = FUNC7 (addr, 0), op1 = FUNC7 (addr, 1);

	  FUNC14 (!FUNC6 (op0));
	  FUNC14 (!FUNC6 (op1));

	  /* Check first to see if this is a constant offset
             from a local symbol reference.  */
	  if ((FUNC3 (op0) == LABEL_REF
		|| (FUNC3 (op0) == SYMBOL_REF && FUNC5 (op0)))
	      && FUNC3 (op1) == CONST_INT)
	    {
              if (TARGET_CPU_ZARCH
		  && FUNC22 (op0, VOIDmode)
		  && FUNC4 (op1) < (HOST_WIDE_INT)1 << 31
		  && FUNC4 (op1) >= -((HOST_WIDE_INT)1 << 31))
                {
                  if (FUNC4 (op1) & 1)
                    {
                      /* LARL can't handle odd offsets, so emit a
                         pair of LARL and LA.  */
                      rtx temp = reg? reg : FUNC17 (Pmode);

                      if (!FUNC1 (FUNC4 (op1)))
                        {
                          HOST_WIDE_INT even = FUNC4 (op1) - 1;
                          op0 = FUNC20 (Pmode, op0, FUNC2 (even));
			  op0 = FUNC19 (Pmode, op0);
                          op1 = const1_rtx;
                        }

                      FUNC11 (temp, op0);
                      new = FUNC20 (Pmode, temp, op1);

                      if (reg != 0)
                        {
                          FUNC24 (reg, new);
                          new = reg;
                        }
                    }
                  else
                    {
                      /* If the offset is even, we can just use LARL.
                         This will happen automatically.  */
                    }
                }
              else
                {
                  /* Access local symbols relative to the GOT.  */

                  rtx temp = reg? reg : FUNC17 (Pmode);

		  if (reload_in_progress || reload_completed)
		    regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

                  addr = FUNC21 (Pmode, FUNC18 (1, op0),
					 UNSPEC_GOTOFF);
                  addr = FUNC20 (Pmode, addr, op1);
                  addr = FUNC19 (Pmode, addr);
                  addr = FUNC12 (Pmode, addr);
		  FUNC11 (temp, addr);

                  new = FUNC20 (Pmode, pic_offset_table_rtx, temp);
                  if (reg != 0)
                    {
                      FUNC24 (reg, new);
                      new = reg;
                    }
                }
	    }

          /* Now, check whether it is a GOT relative symbol plus offset
             that was pulled out of the literal pool.  Force it back in.  */

	  else if (FUNC3 (op0) == UNSPEC
	           && FUNC3 (op1) == CONST_INT
	           && FUNC8 (op0, 1) == UNSPEC_GOTOFF)
            {
	      FUNC14 (FUNC10 (op0, 0) == 1);

              new = FUNC12 (Pmode, orig);
            }

          /* Otherwise, compute the sum.  */
	  else
	    {
	      base = FUNC25 (FUNC7 (addr, 0), reg);
	      new  = FUNC25 (FUNC7 (addr, 1),
					     base == reg ? NULL_RTX : reg);
	      if (FUNC3 (new) == CONST_INT)
		new = FUNC23 (base, FUNC4 (new));
	      else
		{
		  if (FUNC3 (new) == PLUS && FUNC0 (FUNC7 (new, 1)))
		    {
		      base = FUNC20 (Pmode, base, FUNC7 (new, 0));
		      new = FUNC7 (new, 1);
		    }
		  new = FUNC20 (Pmode, base, new);
		}

	      if (FUNC3 (new) == CONST)
		new = FUNC7 (new, 0);
              new = FUNC13 (new, 0);
	    }
	}
    }
  return new;
}