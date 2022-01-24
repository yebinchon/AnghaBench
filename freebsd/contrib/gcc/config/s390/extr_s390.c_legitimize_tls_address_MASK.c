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

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t PIC_OFFSET_TABLE_REGNUM ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  TARGET_CPU_ZARCH ; 
#define  TLS_MODEL_GLOBAL_DYNAMIC 132 
#define  TLS_MODEL_INITIAL_EXEC 131 
#define  TLS_MODEL_LOCAL_DYNAMIC 130 
#define  TLS_MODEL_LOCAL_EXEC 129 
 scalar_t__ UNSPEC ; 
 int UNSPEC_DTPOFF ; 
 int UNSPEC_GOTNTPOFF ; 
#define  UNSPEC_INDNTPOFF 128 
 int UNSPEC_NTPOFF ; 
 int UNSPEC_TLSGD ; 
 int UNSPEC_TLSLDM ; 
 int UNSPEC_TLSLDM_NTPOFF ; 
 int UNSPEC_TLS_LOAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int flag_pic ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* regs_ever_live ; 
 int /*<<< orphan*/  reload_completed ; 
 int /*<<< orphan*/  reload_in_progress ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC27 (rtx addr, rtx reg)
{
  rtx new, tls_call, temp, base, r2, insn;

  if (FUNC0 (addr) == SYMBOL_REF)
    switch (FUNC26 (addr))
      {
      case TLS_MODEL_GLOBAL_DYNAMIC:
	FUNC25 ();
	r2 = FUNC17 (Pmode, 2);
	tls_call = FUNC19 (Pmode, FUNC14 (1, addr), UNSPEC_TLSGD);
	new = FUNC15 (Pmode, tls_call);
	new = FUNC8 (Pmode, new);
	FUNC6 (r2, new);
	FUNC22 (r2, tls_call);
	insn = FUNC20 ();
	FUNC7 ();

	new = FUNC19 (Pmode, FUNC14 (1, addr), UNSPEC_NTPOFF);
	temp = FUNC13 (Pmode);
	FUNC5 (insn, temp, r2, new);

	new = FUNC16 (Pmode, FUNC23 (), temp);
	if (reg != 0)
	  {
	    FUNC24 (reg, new);
	    new = reg;
	  }
	break;

      case TLS_MODEL_LOCAL_DYNAMIC:
	FUNC25 ();
	r2 = FUNC17 (Pmode, 2);
	tls_call = FUNC19 (Pmode, FUNC14 (1, const0_rtx), UNSPEC_TLSLDM);
	new = FUNC15 (Pmode, tls_call);
	new = FUNC8 (Pmode, new);
	FUNC6 (r2, new);
	FUNC22 (r2, tls_call);
	insn = FUNC20 ();
	FUNC7 ();

	new = FUNC19 (Pmode, FUNC14 (1, const0_rtx), UNSPEC_TLSLDM_NTPOFF);
	temp = FUNC13 (Pmode);
	FUNC5 (insn, temp, r2, new);

	new = FUNC16 (Pmode, FUNC23 (), temp);
	base = FUNC13 (Pmode);
	FUNC24 (base, new);

	new = FUNC19 (Pmode, FUNC14 (1, addr), UNSPEC_DTPOFF);
	new = FUNC15 (Pmode, new);
	new = FUNC8 (Pmode, new);
	temp = FUNC13 (Pmode);
	FUNC6 (temp, new);

	new = FUNC16 (Pmode, base, temp);
	if (reg != 0)
	  {
	    FUNC24 (reg, new);
	    new = reg;
	  }
	break;

      case TLS_MODEL_INITIAL_EXEC:
	if (flag_pic == 1)
	  {
	    /* Assume GOT offset < 4k.  This is handled the same way
	       in both 31- and 64-bit code.  */

	    if (reload_in_progress || reload_completed)
	      regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

	    new = FUNC19 (Pmode, FUNC14 (1, addr), UNSPEC_GOTNTPOFF);
	    new = FUNC15 (Pmode, new);
	    new = FUNC16 (Pmode, pic_offset_table_rtx, new);
	    new = FUNC12 (Pmode, new);
	    temp = FUNC13 (Pmode);
	    FUNC6 (temp, new);
	  }
	else if (TARGET_CPU_ZARCH)
	  {
	    /* If the GOT offset might be >= 4k, we determine the position
	       of the GOT entry via a PC-relative LARL.  */

	    new = FUNC19 (Pmode, FUNC14 (1, addr), UNSPEC_INDNTPOFF);
	    new = FUNC15 (Pmode, new);
	    temp = FUNC13 (Pmode);
	    FUNC6 (temp, new);

	    new = FUNC12 (Pmode, temp);
	    temp = FUNC13 (Pmode);
	    FUNC6 (temp, new);
	  }
	else if (flag_pic)
	  {
	    /* If the GOT offset might be >= 4k, we have to load it
	       from the literal pool.  */

	    if (reload_in_progress || reload_completed)
	      regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;

	    new = FUNC19 (Pmode, FUNC14 (1, addr), UNSPEC_GOTNTPOFF);
	    new = FUNC15 (Pmode, new);
	    new = FUNC8 (Pmode, new);
	    temp = FUNC13 (Pmode);
	    FUNC6 (temp, new);

            new = FUNC16 (Pmode, pic_offset_table_rtx, temp);
	    new = FUNC12 (Pmode, new);

	    new = FUNC19 (Pmode, FUNC14 (2, new, addr), UNSPEC_TLS_LOAD);
	    temp = FUNC13 (Pmode);
	    FUNC4 (FUNC18 (Pmode, temp, new));
	  }
	else
	  {
	    /* In position-dependent code, load the absolute address of
	       the GOT entry from the literal pool.  */

	    new = FUNC19 (Pmode, FUNC14 (1, addr), UNSPEC_INDNTPOFF);
	    new = FUNC15 (Pmode, new);
	    new = FUNC8 (Pmode, new);
	    temp = FUNC13 (Pmode);
	    FUNC6 (temp, new);

	    new = temp;
	    new = FUNC12 (Pmode, new);
	    new = FUNC19 (Pmode, FUNC14 (2, new, addr), UNSPEC_TLS_LOAD);
	    temp = FUNC13 (Pmode);
	    FUNC4 (FUNC18 (Pmode, temp, new));
	  }

	new = FUNC16 (Pmode, FUNC23 (), temp);
	if (reg != 0)
	  {
	    FUNC24 (reg, new);
	    new = reg;
	  }
	break;

      case TLS_MODEL_LOCAL_EXEC:
	new = FUNC19 (Pmode, FUNC14 (1, addr), UNSPEC_NTPOFF);
	new = FUNC15 (Pmode, new);
	new = FUNC8 (Pmode, new);
        temp = FUNC13 (Pmode);
	FUNC6 (temp, new);

	new = FUNC16 (Pmode, FUNC23 (), temp);
	if (reg != 0)
	  {
	    FUNC24 (reg, new);
	    new = reg;
	  }
	break;

      default:
	FUNC11 ();
      }

  else if (FUNC0 (addr) == CONST && FUNC0 (FUNC2 (addr, 0)) == UNSPEC)
    {
      switch (FUNC3 (FUNC2 (addr, 0), 1))
	{
	case UNSPEC_INDNTPOFF:
	  FUNC10 (TARGET_CPU_ZARCH);
	  new = addr;
	  break;

	default:
	  FUNC11 ();
	}
    }

  else if (FUNC0 (addr) == CONST && FUNC0 (FUNC2 (addr, 0)) == PLUS
	   && FUNC0 (FUNC2 (FUNC2 (addr, 0), 1)) == CONST_INT)
    {
      new = FUNC2 (FUNC2 (addr, 0), 0);
      if (FUNC0 (new) != SYMBOL_REF)
	new = FUNC15 (Pmode, new);

      new = FUNC27 (new, reg);
      new = FUNC21 (new, FUNC1 (FUNC2 (FUNC2 (addr, 0), 1)));
      new = FUNC9 (new, 0);
    }

  else
    FUNC11 ();  /* for now ... */

  return new;
}