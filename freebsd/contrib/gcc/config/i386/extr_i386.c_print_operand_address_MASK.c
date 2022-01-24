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
struct ix86_address {int scale; int seg; scalar_t__ disp; scalar_t__ index; scalar_t__ base; } ;
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ASM_ATT ; 
 scalar_t__ ASM_INTEL ; 
 scalar_t__ ASSEMBLER_DIALECT ; 
 scalar_t__ CONST ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* HOST_WIDE_INT_PRINT_DEC ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PLUS ; 
#define  SEG_DEFAULT 130 
#define  SEG_FS 129 
#define  SEG_GS 128 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__* USER_LABEL_PREFIX ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ flag_pic ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (scalar_t__,struct ix86_address*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char,int /*<<< orphan*/ *) ; 

void
FUNC15 (FILE *file, rtx addr)
{
  struct ix86_address parts;
  rtx base, index, disp;
  int scale;
  int ok = FUNC9 (addr, &parts);

  FUNC6 (ok);

  base = parts.base;
  index = parts.index;
  disp = parts.disp;
  scale = parts.scale;

  switch (parts.seg)
    {
    case SEG_DEFAULT:
      break;
    case SEG_FS:
    case SEG_GS:
      if (USER_LABEL_PREFIX[0] == 0)
	FUNC14 ('%', file);
      FUNC5 ((parts.seg == SEG_FS ? "fs:" : "gs:"), file);
      break;
    default:
      FUNC7 ();
    }

  if (!base && !index)
    {
      /* Displacement only requires special attention.  */

      if (FUNC0 (disp) == CONST_INT)
	{
	  if (ASSEMBLER_DIALECT == ASM_INTEL && parts.seg == SEG_DEFAULT)
	    {
	      if (USER_LABEL_PREFIX[0] == 0)
		FUNC14 ('%', file);
	      FUNC5 ("ds:", file);
	    }
	  FUNC4 (file, HOST_WIDE_INT_PRINT_DEC, FUNC1 (disp));
	}
      else if (flag_pic)
	FUNC12 (file, disp, 0);
      else
	FUNC10 (file, disp);

      /* Use one byte shorter RIP relative addressing for 64bit mode.  */
      if (TARGET_64BIT)
	{
	  if (FUNC0 (disp) == CONST
	      && FUNC0 (FUNC3 (disp, 0)) == PLUS
	      && FUNC0 (FUNC3 (FUNC3 (disp, 0), 1)) == CONST_INT)
	    disp = FUNC3 (FUNC3 (disp, 0), 0);
	  if (FUNC0 (disp) == LABEL_REF
	      || (FUNC0 (disp) == SYMBOL_REF
		  && FUNC2 (disp) == 0))
	    FUNC5 ("(%rip)", file);
	}
    }
  else
    {
      if (ASSEMBLER_DIALECT == ASM_ATT)
	{
	  if (disp)
	    {
	      if (flag_pic)
		FUNC12 (file, disp, 0);
	      else if (FUNC0 (disp) == LABEL_REF)
		FUNC11 (disp);
	      else
		FUNC10 (file, disp);
	    }

	  FUNC14 ('(', file);
	  if (base)
	    FUNC13 (base, 0, file);
	  if (index)
	    {
	      FUNC14 (',', file);
	      FUNC13 (index, 0, file);
	      if (scale != 1)
		FUNC4 (file, ",%d", scale);
	    }
	  FUNC14 (')', file);
	}
      else
	{
	  rtx offset = NULL_RTX;

	  if (disp)
	    {
	      /* Pull out the offset of a symbol; print any symbol itself.  */
	      if (FUNC0 (disp) == CONST
		  && FUNC0 (FUNC3 (disp, 0)) == PLUS
		  && FUNC0 (FUNC3 (FUNC3 (disp, 0), 1)) == CONST_INT)
		{
		  offset = FUNC3 (FUNC3 (disp, 0), 1);
		  disp = FUNC8 (VOIDmode,
					FUNC3 (FUNC3 (disp, 0), 0));
		}

	      if (flag_pic)
		FUNC12 (file, disp, 0);
	      else if (FUNC0 (disp) == LABEL_REF)
		FUNC11 (disp);
	      else if (FUNC0 (disp) == CONST_INT)
		offset = disp;
	      else
		FUNC10 (file, disp);
	    }

	  FUNC14 ('[', file);
	  if (base)
	    {
	      FUNC13 (base, 0, file);
	      if (offset)
		{
		  if (FUNC1 (offset) >= 0)
		    FUNC14 ('+', file);
		  FUNC4 (file, HOST_WIDE_INT_PRINT_DEC, FUNC1 (offset));
		}
	    }
	  else if (offset)
	    FUNC4 (file, HOST_WIDE_INT_PRINT_DEC, FUNC1 (offset));
	  else
	    FUNC14 ('0', file);

	  if (index)
	    {
	      FUNC14 ('+', file);
	      FUNC13 (index, 0, file);
	      if (scale != 1)
		FUNC4 (file, "*%d", scale);
	    }
	  FUNC14 (']', file);
	}
    }
}