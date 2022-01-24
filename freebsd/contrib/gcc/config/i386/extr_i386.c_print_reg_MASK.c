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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ARG_POINTER_REGNUM ; 
 size_t FUNC1 (char**) ; 
 scalar_t__ ASM_ATT ; 
 scalar_t__ ASSEMBLER_DIALECT ; 
 size_t FIRST_REX_INT_REG ; 
 scalar_t__ FLAGS_REG ; 
 scalar_t__ FPSR_REG ; 
 scalar_t__ FRAME_POINTER_REGNUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int TARGET_64BIT ; 
 scalar_t__* USER_LABEL_PREFIX ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 char** hi_reg_name ; 
 int /*<<< orphan*/  FUNC13 (char,int /*<<< orphan*/ *) ; 
 char** qi_high_reg_name ; 
 char** qi_reg_name ; 

void
FUNC14 (rtx x, int code, FILE *file)
{
  FUNC11 (FUNC5 (x) != ARG_POINTER_REGNUM
	      && FUNC5 (x) != FRAME_POINTER_REGNUM
	      && FUNC5 (x) != FLAGS_REG
	      && FUNC5 (x) != FPSR_REG);

  if (ASSEMBLER_DIALECT == ASM_ATT || USER_LABEL_PREFIX[0] == 0)
    FUNC13 ('%', file);

  if (code == 'w' || FUNC4 (x))
    code = 2;
  else if (code == 'b')
    code = 1;
  else if (code == 'k')
    code = 4;
  else if (code == 'q')
    code = 8;
  else if (code == 'y')
    code = 3;
  else if (code == 'h')
    code = 0;
  else
    code = FUNC3 (FUNC2 (x));

  /* Irritatingly, AMD extended registers use different naming convention
     from the normal registers.  */
  if (FUNC6 (x))
    {
      FUNC11 (TARGET_64BIT);
      switch (code)
	{
	  case 0:
	    FUNC8 ("extended registers have no high halves");
	    break;
	  case 1:
	    FUNC9 (file, "r%ib", FUNC5 (x) - FIRST_REX_INT_REG + 8);
	    break;
	  case 2:
	    FUNC9 (file, "r%iw", FUNC5 (x) - FIRST_REX_INT_REG + 8);
	    break;
	  case 4:
	    FUNC9 (file, "r%id", FUNC5 (x) - FIRST_REX_INT_REG + 8);
	    break;
	  case 8:
	    FUNC9 (file, "r%i", FUNC5 (x) - FIRST_REX_INT_REG + 8);
	    break;
	  default:
	    FUNC8 ("unsupported operand size for extended register");
	    break;
	}
      return;
    }
  switch (code)
    {
    case 3:
      if (FUNC7 (x))
	{
	  FUNC10 ("st(0)", file);
	  break;
	}
      /* FALLTHRU */
    case 8:
    case 4:
    case 12:
      if (! FUNC0 (x))
	FUNC13 (code == 8 && TARGET_64BIT ? 'r' : 'e', file);
      /* FALLTHRU */
    case 16:
    case 2:
    normal:
      FUNC10 (hi_reg_name[FUNC5 (x)], file);
      break;
    case 1:
      if (FUNC5 (x) >= FUNC1 (qi_reg_name))
	goto normal;
      FUNC10 (qi_reg_name[FUNC5 (x)], file);
      break;
    case 0:
      if (FUNC5 (x) >= FUNC1 (qi_high_reg_name))
	goto normal;
      FUNC10 (qi_high_reg_name[FUNC5 (x)], file);
      break;
    default:
      FUNC12 ();
    }
}