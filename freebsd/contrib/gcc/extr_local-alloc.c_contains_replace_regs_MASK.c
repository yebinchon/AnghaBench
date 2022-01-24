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
struct TYPE_2__ {int replace; } ;

/* Variables and functions */
#define  CC0 137 
#define  CONST 136 
#define  CONST_DOUBLE 135 
#define  CONST_INT 134 
#define  CONST_VECTOR 133 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  HIGH 132 
#define  LABEL_REF 131 
#define  PC 130 
#define  REG 129 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* reg_equiv ; 

__attribute__((used)) static int
FUNC7 (rtx x)
{
  int i, j;
  const char *fmt;
  enum rtx_code code = FUNC0 (x);

  switch (code)
    {
    case CONST_INT:
    case CONST:
    case LABEL_REF:
    case SYMBOL_REF:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case PC:
    case CC0:
    case HIGH:
      return 0;

    case REG:
      return reg_equiv[FUNC3 (x)].replace;

    default:
      break;
    }

  fmt = FUNC1 (code);
  for (i = FUNC2 (code) - 1; i >= 0; i--)
    switch (fmt[i])
      {
      case 'e':
	if (FUNC7 (FUNC4 (x, i)))
	  return 1;
	break;
      case 'E':
	for (j = FUNC6 (x, i) - 1; j >= 0; j--)
	  if (FUNC7 (FUNC5 (x, i, j)))
	    return 1;
	break;
      }

  return 0;
}