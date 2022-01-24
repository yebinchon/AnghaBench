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
 scalar_t__ CM_SMALL_PIC ; 
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 size_t PIC_OFFSET_TABLE_REGNUM ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_MACHO ; 
 scalar_t__ UNSPEC ; 
 int /*<<< orphan*/  UNSPEC_GOT ; 
 int /*<<< orphan*/  UNSPEC_GOTOFF ; 
 int /*<<< orphan*/  UNSPEC_GOTPCREL ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ ix86_cmodel ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ pic_offset_table_rtx ; 
 scalar_t__ FUNC22 (scalar_t__,int) ; 
 int* regs_ever_live ; 
 scalar_t__ reload_in_progress ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC25 (rtx orig, rtx reg)
{
  rtx addr = orig;
  rtx new = orig;
  rtx base;

#if TARGET_MACHO
  if (TARGET_MACHO && !TARGET_64BIT)
    {
      if (reg == 0)
	reg = gen_reg_rtx (Pmode);
      /* Use the generic Mach-O PIC machinery.  */
      return machopic_legitimize_pic_address (orig, GET_MODE (orig), reg);
    }
#endif

  if (TARGET_64BIT && FUNC19 (addr))
    new = addr;
  else if (TARGET_64BIT
	   && ix86_cmodel != CM_SMALL_PIC
	   && FUNC20 (addr, Pmode))
    {
      rtx tmpreg;
      /* This symbol may be referenced via a displacement from the PIC
	 base address (@GOTOFF).  */

      if (reload_in_progress)
	regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
      if (FUNC1 (addr) == CONST)
	addr = FUNC5 (addr, 0);
      if (FUNC1 (addr) == PLUS)
	  {
            new = FUNC17 (Pmode, FUNC14 (1, FUNC5 (addr, 0)), UNSPEC_GOTOFF);
	    new = FUNC16 (Pmode, new, FUNC5 (addr, 1));
	  }
	else
          new = FUNC17 (Pmode, FUNC14 (1, addr), UNSPEC_GOTOFF);
      new = FUNC15 (Pmode, new);
      if (!reg)
        tmpreg = FUNC13 (Pmode);
      else
	tmpreg = reg;
      FUNC7 (tmpreg, new);

      if (reg != 0)
	{
	  new = FUNC8 (Pmode, PLUS, reg, pic_offset_table_rtx,
				     tmpreg, 1, OPTAB_DIRECT);
	  new = reg;
	}
      else new = FUNC16 (Pmode, pic_offset_table_rtx, tmpreg);
    }
  else if (!TARGET_64BIT && FUNC20 (addr, Pmode))
    {
      /* This symbol may be referenced via a displacement from the PIC
	 base address (@GOTOFF).  */

      if (reload_in_progress)
	regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
      if (FUNC1 (addr) == CONST)
	addr = FUNC5 (addr, 0);
      if (FUNC1 (addr) == PLUS)
	  {
            new = FUNC17 (Pmode, FUNC14 (1, FUNC5 (addr, 0)), UNSPEC_GOTOFF);
	    new = FUNC16 (Pmode, new, FUNC5 (addr, 1));
	  }
	else
          new = FUNC17 (Pmode, FUNC14 (1, addr), UNSPEC_GOTOFF);
      new = FUNC15 (Pmode, new);
      new = FUNC16 (Pmode, pic_offset_table_rtx, new);

      if (reg != 0)
	{
	  FUNC7 (reg, new);
	  new = reg;
	}
    }
  else if (FUNC1 (addr) == SYMBOL_REF && FUNC4 (addr) == 0)
    {
      if (TARGET_64BIT)
	{
	  new = FUNC17 (Pmode, FUNC14 (1, addr), UNSPEC_GOTPCREL);
	  new = FUNC15 (Pmode, new);
	  new = FUNC11 (Pmode, new);
	  FUNC23 (new, FUNC18 ());

	  if (reg == 0)
	    reg = FUNC13 (Pmode);
	  /* Use directly gen_movsi, otherwise the address is loaded
	     into register for CSE.  We don't want to CSE this addresses,
	     instead we CSE addresses from the GOT table, so skip this.  */
	  FUNC6 (FUNC12 (reg, new));
	  new = reg;
	}
      else
	{
	  /* This symbol must be referenced via a load from the
	     Global Offset Table (@GOT).  */

	  if (reload_in_progress)
	    regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
	  new = FUNC17 (Pmode, FUNC14 (1, addr), UNSPEC_GOT);
	  new = FUNC15 (Pmode, new);
	  new = FUNC16 (Pmode, pic_offset_table_rtx, new);
	  new = FUNC11 (Pmode, new);
	  FUNC23 (new, FUNC18 ());

	  if (reg == 0)
	    reg = FUNC13 (Pmode);
	  FUNC7 (reg, new);
	  new = reg;
	}
    }
  else
    {
      if (FUNC1 (addr) == CONST_INT
	  && !FUNC24 (addr, VOIDmode))
	{
	  if (reg)
	    {
	      FUNC7 (reg, addr);
	      new = reg;
	    }
	  else
	    new = FUNC9 (Pmode, addr);
	}
      else if (FUNC1 (addr) == CONST)
	{
	  addr = FUNC5 (addr, 0);

	  /* We must match stuff we generate before.  Assume the only
	     unspecs that can get here are ours.  Not that we could do
	     anything with them anyway....  */
	  if (FUNC1 (addr) == UNSPEC
	      || (FUNC1 (addr) == PLUS
		  && FUNC1 (FUNC5 (addr, 0)) == UNSPEC))
	    return orig;
	  FUNC10 (FUNC1 (addr) == PLUS);
	}
      if (FUNC1 (addr) == PLUS)
	{
	  rtx op0 = FUNC5 (addr, 0), op1 = FUNC5 (addr, 1);

	  /* Check first to see if this is a constant offset from a @GOTOFF
	     symbol reference.  */
	  if (FUNC20 (op0, Pmode)
	      && FUNC1 (op1) == CONST_INT)
	    {
	      if (!TARGET_64BIT)
		{
		  if (reload_in_progress)
		    regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
		  new = FUNC17 (Pmode, FUNC14 (1, op0),
					UNSPEC_GOTOFF);
		  new = FUNC16 (Pmode, new, op1);
		  new = FUNC15 (Pmode, new);
		  new = FUNC16 (Pmode, pic_offset_table_rtx, new);

		  if (reg != 0)
		    {
		      FUNC7 (reg, new);
		      new = reg;
		    }
		}
	      else
		{
		  if (FUNC3 (op1) < -16*1024*1024
		      || FUNC3 (op1) >= 16*1024*1024)
		    {
		      if (!FUNC24 (op1, Pmode))
			op1 = FUNC9 (Pmode, op1);
		      new = FUNC16 (Pmode, FUNC9 (Pmode, op0), op1);
		    }
		}
	    }
	  else
	    {
	      base = FUNC25 (FUNC5 (addr, 0), reg);
	      new  = FUNC25 (FUNC5 (addr, 1),
					     base == reg ? NULL_RTX : reg);

	      if (FUNC1 (new) == CONST_INT)
		new = FUNC22 (base, FUNC3 (new));
	      else
		{
		  if (FUNC1 (new) == PLUS && FUNC0 (FUNC5 (new, 1)))
		    {
		      base = FUNC16 (Pmode, base, FUNC5 (new, 0));
		      new = FUNC5 (new, 1);
		    }
		  new = FUNC16 (Pmode, base, new);
		}
	    }
	}
    }
  return new;
}