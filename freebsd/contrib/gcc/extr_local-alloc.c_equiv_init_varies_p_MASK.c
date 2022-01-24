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
struct TYPE_2__ {int /*<<< orphan*/  replace; } ;
typedef  int RTX_CODE ;

/* Variables and functions */
#define  ASM_OPERANDS 136 
#define  CONST 135 
#define  CONST_DOUBLE 134 
#define  CONST_INT 133 
#define  CONST_VECTOR 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  LABEL_REF 131 
#define  MEM 130 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  REG 129 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* reg_equiv ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10 (rtx x)
{
  RTX_CODE code = FUNC0 (x);
  int i;
  const char *fmt;

  switch (code)
    {
    case MEM:
      return !FUNC3 (x) || FUNC10 (FUNC6 (x, 0));

    case CONST:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case SYMBOL_REF:
    case LABEL_REF:
      return 0;

    case REG:
      return reg_equiv[FUNC5 (x)].replace == 0 && FUNC9 (x, 0);

    case ASM_OPERANDS:
      if (FUNC4 (x))
	return 1;

      /* Fall through.  */

    default:
      break;
    }

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    if (fmt[i] == 'e')
      {
	if (FUNC10 (FUNC6 (x, i)))
	  return 1;
      }
    else if (fmt[i] == 'E')
      {
	int j;
	for (j = 0; j < FUNC8 (x, i); j++)
	  if (FUNC10 (FUNC7 (x, i, j)))
	    return 1;
      }

  return 0;
}