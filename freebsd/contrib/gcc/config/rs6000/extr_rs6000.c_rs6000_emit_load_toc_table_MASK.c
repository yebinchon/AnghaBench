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
 scalar_t__ ABI_AIX ; 
 scalar_t__ ABI_V4 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ DEFAULT_ABI ; 
 int /*<<< orphan*/  LINK_REGISTER_REGNUM ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  RS6000_PIC_OFFSET_TABLE_REGNUM ; 
 scalar_t__ TARGET_32BIT ; 
 int /*<<< orphan*/  TARGET_AIX ; 
 scalar_t__ TARGET_ELF ; 
 scalar_t__ TARGET_MINIMAL_TOC ; 
 scalar_t__ TARGET_SECURE_PLT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int flag_pic ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int rs6000_pic_labelno ; 
 int /*<<< orphan*/  toc_label_name ; 

void
FUNC22 (int fromprolog)
{
  rtx dest, insn;
  dest = FUNC17 (Pmode, RS6000_PIC_OFFSET_TABLE_REGNUM);

  if (TARGET_ELF && TARGET_SECURE_PLT && DEFAULT_ABI != ABI_AIX && flag_pic)
    {
      char buf[30];
      rtx lab, tmp1, tmp2, got, tempLR;

      FUNC0 (buf, "LCF", rs6000_pic_labelno);
      lab = FUNC18 (Pmode, FUNC19 (buf));
      if (flag_pic == 2)
	got = FUNC18 (Pmode, toc_label_name);
      else
	got = FUNC20 ();
      tmp1 = tmp2 = dest;
      if (!fromprolog)
	{
	  tmp1 = FUNC15 (Pmode);
	  tmp2 = FUNC15 (Pmode);
	}
      tempLR = (fromprolog
		? FUNC17 (Pmode, LINK_REGISTER_REGNUM)
		: FUNC15 (Pmode));
      insn = FUNC1 (FUNC9 (tempLR, lab));
      if (fromprolog)
	FUNC21 (insn);
      insn = FUNC2 (tmp1, tempLR);
      if (fromprolog)
	FUNC21 (insn);
      insn = FUNC1 (FUNC12 (tmp2, tmp1, got, lab));
      if (fromprolog)
	FUNC21 (insn);
      insn = FUNC1 (FUNC13 (dest, tmp2, got, lab));
      if (fromprolog)
	FUNC21 (insn);
    }
  else if (TARGET_ELF && DEFAULT_ABI == ABI_V4 && flag_pic == 1)
    {
      rtx tempLR = (fromprolog
		    ? FUNC17 (Pmode, LINK_REGISTER_REGNUM)
		    : FUNC15 (Pmode));

      insn = FUNC1 (FUNC14 (tempLR));
      if (fromprolog)
	FUNC21 (insn);
      insn = FUNC2 (dest, tempLR);
      if (fromprolog)
	FUNC21 (insn);
    }
  else if (TARGET_ELF && DEFAULT_ABI != ABI_AIX && flag_pic == 2)
    {
      char buf[30];
      rtx tempLR = (fromprolog
		    ? FUNC17 (Pmode, LINK_REGISTER_REGNUM)
		    : FUNC15 (Pmode));
      rtx temp0 = (fromprolog
		   ? FUNC17 (Pmode, 0)
		   : FUNC15 (Pmode));

      if (fromprolog)
	{
	  rtx symF, symL;

	  FUNC0 (buf, "LCF", rs6000_pic_labelno);
	  symF = FUNC18 (Pmode, FUNC19 (buf));

	  FUNC0 (buf, "LCL", rs6000_pic_labelno);
	  symL = FUNC18 (Pmode, FUNC19 (buf));

	  FUNC21 (FUNC1 (FUNC9 (tempLR,
							       symF)));
	  FUNC21 (FUNC2 (dest, tempLR));
	  FUNC21 (FUNC1 (FUNC11 (temp0, dest,
							       symL,
							       symF)));
	}
      else
	{
	  rtx tocsym;

	  tocsym = FUNC18 (Pmode, toc_label_name);
	  FUNC1 (FUNC10 (tempLR, tocsym));
	  FUNC2 (dest, tempLR);
	  FUNC2 (temp0, FUNC16 (Pmode, dest));
	}
      insn = FUNC1 (FUNC4 (dest, temp0, dest));
      if (fromprolog)
	FUNC21 (insn);
    }
  else if (TARGET_ELF && !TARGET_AIX && flag_pic == 0 && TARGET_MINIMAL_TOC)
    {
      /* This is for AIX code running in non-PIC ELF32.  */
      char buf[30];
      rtx realsym;
      FUNC0 (buf, "LCTOC", 1);
      realsym = FUNC18 (Pmode, FUNC19 (buf));

      insn = FUNC1 (FUNC5 (dest, realsym));
      if (fromprolog)
	FUNC21 (insn);
      insn = FUNC1 (FUNC6 (dest, dest, realsym));
      if (fromprolog)
	FUNC21 (insn);
    }
  else
    {
      FUNC3 (DEFAULT_ABI == ABI_AIX);

      if (TARGET_32BIT)
	insn = FUNC1 (FUNC8 (dest));
      else
	insn = FUNC1 (FUNC7 (dest));
      if (fromprolog)
	FUNC21 (insn);
    }
}