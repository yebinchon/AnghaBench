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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
#define  CC0 139 
#define  CLOBBER 138 
#define  CONST 137 
#define  CONST_DOUBLE 136 
#define  CONST_INT 135 
#define  CONST_VECTOR 134 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int) ; 
#define  LABEL_REF 133 
#define  PC 132 
#define  REG 131 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  SUBREG 130 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 129 
#define  USE 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * reg_max_ref_width ; 

__attribute__((used)) static void
FUNC11 (rtx x)
{
  int i;
  const char *fmt;
  enum rtx_code code = FUNC0 (x);

  switch (code)
    {
    case REG:
    case CONST_INT:
    case CONST:
    case SYMBOL_REF:
    case LABEL_REF:
    case CONST_DOUBLE:
    case CONST_VECTOR: /* shouldn't happen, but just in case.  */
    case CC0:
    case PC:
    case USE:
    case CLOBBER:
      return;

    case SUBREG:
      if (FUNC6 (FUNC7 (x))
	  && (FUNC2 (FUNC1 (x))
	      > reg_max_ref_width[FUNC5 (FUNC7 (x))]))
	reg_max_ref_width[FUNC5 (FUNC7 (x))]
	  = FUNC2 (FUNC1 (x));
      return;

    default:
      break;
    }

  fmt = FUNC3 (code);
  for (i = FUNC4 (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
	FUNC11 (FUNC8 (x, i));
      else if (fmt[i] == 'E')
	{
	  int j;
	  for (j = FUNC10 (x, i) - 1; j >= 0; j--)
	    FUNC11 (FUNC9 (x, i, j));
	}
    }
}