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
#define  CONST 136 
#define  CONST_DOUBLE 135 
#define  CONST_INT 134 
#define  CONST_STRING 133 
#define  CONST_VECTOR 132 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* HOST_WIDE_INT_PRINT_HEX ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 131 
#define  PC 130 
#define  PLUS 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10 (FILE *f, rtx x)
{
  switch (FUNC2 (x))
    {
    case CONST_INT:
      FUNC8 (f, HOST_WIDE_INT_PRINT_HEX, FUNC4 (x));
      return;

    case CONST_DOUBLE:
      FUNC8 (f, "<0x%lx,0x%lx>", (long)FUNC7 (x, 2), (long)FUNC7 (x, 3));
      return;

    case CONST_VECTOR:
      {
	int i;

	FUNC8 (f, "<");
	for (i = 0; i < FUNC1 (x); i++)
	  {
	    FUNC8 (f, HOST_WIDE_INT_PRINT_HEX, FUNC4 (FUNC0 (x, i)));
	    if (i < (FUNC1 (x) - 1))
	      FUNC9 (',', f);
	  }
	FUNC8 (f, ">");
      }
      return;

    case CONST_STRING:
      FUNC8 (f, "\"%s\"", FUNC6 (x, 0));
      return;

    case SYMBOL_REF:
      FUNC8 (f, "`%s'", FUNC6 (x, 0));
      return;

    case LABEL_REF:
      FUNC8 (f, "L%d", FUNC3 (FUNC5 (x, 0)));
      return;

    case CONST:
      FUNC10 (f, FUNC5 (x, 0));
      return;

    case PLUS:
      FUNC10 (f, FUNC5 (x, 0));
      FUNC8 (f, "+");
      FUNC10 (f, FUNC5 (x, 1));
      return;

    case PC:
      FUNC8 (f, "pc");
      return;

    default:
      FUNC8 (f, "????");
      return;
    }
}