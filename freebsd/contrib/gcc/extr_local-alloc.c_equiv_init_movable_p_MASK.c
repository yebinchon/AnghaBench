#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {int /*<<< orphan*/  replace; int /*<<< orphan*/  loop_depth; } ;

/* Variables and functions */
#define  ASM_OPERANDS 139 
#define  CC0 138 
#define  CLOBBER 137 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  POST_DEC 136 
#define  POST_INC 135 
#define  POST_MODIFY 134 
#define  PRE_DEC 133 
#define  PRE_INC 132 
#define  PRE_MODIFY 131 
#define  REG 130 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
#define  SET 129 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  UNSPEC_VOLATILE 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* reg_equiv ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11 (rtx x, int regno)
{
  int i, j;
  const char *fmt;
  enum rtx_code code = FUNC0 (x);

  switch (code)
    {
    case SET:
      return FUNC11 (FUNC6 (x), regno);

    case CC0:
    case CLOBBER:
      return 0;

    case PRE_INC:
    case PRE_DEC:
    case POST_INC:
    case POST_DEC:
    case PRE_MODIFY:
    case POST_MODIFY:
      return 0;

    case REG:
      return (reg_equiv[FUNC4 (x)].loop_depth >= reg_equiv[regno].loop_depth
	      && reg_equiv[FUNC4 (x)].replace)
	     || (FUNC5 (FUNC4 (x)) < 0 && ! FUNC10 (x, 0));

    case UNSPEC_VOLATILE:
      return 0;

    case ASM_OPERANDS:
      if (FUNC3 (x))
	return 0;

      /* Fall through.  */

    default:
      break;
    }

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    switch (fmt[i])
      {
      case 'e':
	if (! FUNC11 (FUNC7 (x, i), regno))
	  return 0;
	break;
      case 'E':
	for (j = FUNC9 (x, i) - 1; j >= 0; j--)
	  if (! FUNC11 (FUNC8 (x, i, j), regno))
	    return 0;
	break;
      }

  return 1;
}