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
typedef  enum tls_model { ____Placeholder_tls_model } tls_model ;

/* Variables and functions */
 size_t PIC_OFFSET_TABLE_REGNUM ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  REG_EQUIV ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_ANY_GNU_TLS ; 
 int /*<<< orphan*/  TARGET_GNU2_TLS ; 
 int /*<<< orphan*/  TARGET_TLS_DIRECT_SEG_REFS ; 
#define  TLS_MODEL_GLOBAL_DYNAMIC 131 
#define  TLS_MODEL_INITIAL_EXEC 130 
#define  TLS_MODEL_LOCAL_DYNAMIC 129 
#define  TLS_MODEL_LOCAL_EXEC 128 
 int UNSPEC_DTPOFF ; 
 int UNSPEC_GOTNTPOFF ; 
 int UNSPEC_GOTTPOFF ; 
 int UNSPEC_INDNTPOFF ; 
 int UNSPEC_NTPOFF ; 
 int UNSPEC_TPOFF ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  flag_pic ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/ * FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 int /*<<< orphan*/ * pic_offset_table_rtx ; 
 int* regs_ever_live ; 
 int /*<<< orphan*/  reload_in_progress ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 () ; 

__attribute__((used)) static rtx
FUNC30 (rtx x, enum tls_model model, int for_mov)
{
  rtx dest, base, off, pic, tp;
  int type;

  switch (model)
    {
    case TLS_MODEL_GLOBAL_DYNAMIC:
      dest = FUNC7 (Pmode);
      tp = TARGET_GNU2_TLS ? FUNC23 (1) : 0;

      if (TARGET_64BIT && ! TARGET_GNU2_TLS)
	{
	  rtx rax = FUNC13 (Pmode, 0), insns;

	  FUNC29 ();
	  FUNC0 (FUNC18 (rax, x));
	  insns = FUNC21 ();
	  FUNC3 ();

	  FUNC2 (insns, dest, rax, x);
	}
      else if (TARGET_64BIT && TARGET_GNU2_TLS)
	FUNC1 (FUNC18 (dest, x));
      else
	FUNC1 (FUNC17 (dest, x));

      if (TARGET_GNU2_TLS)
	{
	  dest = FUNC4 (Pmode, FUNC12 (Pmode, tp, dest));

	  FUNC28 (FUNC22 (), REG_EQUIV, x);
	}
      break;

    case TLS_MODEL_LOCAL_DYNAMIC:
      base = FUNC7 (Pmode);
      tp = TARGET_GNU2_TLS ? FUNC23 (1) : 0;

      if (TARGET_64BIT && ! TARGET_GNU2_TLS)
	{
	  rtx rax = FUNC13 (Pmode, 0), insns, note;

	  FUNC29 ();
	  FUNC0 (FUNC20 (rax));
	  insns = FUNC21 ();
	  FUNC3 ();

	  note = FUNC10 (VOIDmode, const0_rtx, NULL);
	  note = FUNC10 (VOIDmode, FUNC25 (), note);
	  FUNC2 (insns, base, rax, note);
	}
      else if (TARGET_64BIT && TARGET_GNU2_TLS)
	FUNC1 (FUNC20 (base));
      else
	FUNC1 (FUNC19 (base));

      if (TARGET_GNU2_TLS)
	{
	  rtx x = FUNC26 ();

	  FUNC28 (FUNC22 (), REG_EQUIV,
			       FUNC11 (Pmode, x, tp));
	}

      off = FUNC14 (Pmode, FUNC8 (1, x), UNSPEC_DTPOFF);
      off = FUNC9 (Pmode, off);

      dest = FUNC4 (Pmode, FUNC12 (Pmode, base, off));

      if (TARGET_GNU2_TLS)
	{
	  dest = FUNC4 (Pmode, FUNC12 (Pmode, dest, tp));

	  FUNC28 (FUNC22 (), REG_EQUIV, x);
	}

      break;

    case TLS_MODEL_INITIAL_EXEC:
      if (TARGET_64BIT)
	{
	  pic = NULL;
	  type = UNSPEC_GOTNTPOFF;
	}
      else if (flag_pic)
	{
	  if (reload_in_progress)
	    regs_ever_live[PIC_OFFSET_TABLE_REGNUM] = 1;
	  pic = pic_offset_table_rtx;
	  type = TARGET_ANY_GNU_TLS ? UNSPEC_GOTNTPOFF : UNSPEC_GOTTPOFF;
	}
      else if (!TARGET_ANY_GNU_TLS)
	{
	  pic = FUNC7 (Pmode);
	  FUNC1 (FUNC15 (pic));
	  type = UNSPEC_GOTTPOFF;
	}
      else
	{
	  pic = NULL;
	  type = UNSPEC_INDNTPOFF;
	}

      off = FUNC14 (Pmode, FUNC8 (1, x), type);
      off = FUNC9 (Pmode, off);
      if (pic)
	off = FUNC12 (Pmode, pic, off);
      off = FUNC6 (Pmode, off);
      FUNC27 (off, FUNC24 ());

      if (TARGET_64BIT || TARGET_ANY_GNU_TLS)
	{
          base = FUNC23 (for_mov || !TARGET_TLS_DIRECT_SEG_REFS);
	  off = FUNC4 (Pmode, off);
	  return FUNC12 (Pmode, base, off);
	}
      else
	{
	  base = FUNC23 (true);
	  dest = FUNC7 (Pmode);
	  FUNC1 (FUNC16 (dest, base, off));
	}
      break;

    case TLS_MODEL_LOCAL_EXEC:
      off = FUNC14 (Pmode, FUNC8 (1, x),
			    (TARGET_64BIT || TARGET_ANY_GNU_TLS)
			    ? UNSPEC_NTPOFF : UNSPEC_TPOFF);
      off = FUNC9 (Pmode, off);

      if (TARGET_64BIT || TARGET_ANY_GNU_TLS)
	{
	  base = FUNC23 (for_mov || !TARGET_TLS_DIRECT_SEG_REFS);
	  return FUNC12 (Pmode, base, off);
	}
      else
	{
	  base = FUNC23 (true);
	  dest = FUNC7 (Pmode);
	  FUNC1 (FUNC16 (dest, base, off));
	}
      break;

    default:
      FUNC5 ();
    }

  return dest;
}