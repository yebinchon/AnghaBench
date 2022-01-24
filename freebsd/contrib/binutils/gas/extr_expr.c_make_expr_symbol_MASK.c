#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct expr_symbol_line {struct expr_symbol_line* next; int /*<<< orphan*/  line; int /*<<< orphan*/  file; int /*<<< orphan*/ * sym; } ;
struct TYPE_5__ {scalar_t__ X_op; scalar_t__ X_add_number; scalar_t__ X_unsigned; int /*<<< orphan*/ * X_add_symbol; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  FAKE_LABEL_NAME ; 
 scalar_t__ O_big ; 
 scalar_t__ O_constant ; 
 scalar_t__ O_symbol ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  absolute_section ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  expr_section ; 
 struct expr_symbol_line* expr_symbol_lines ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  zero_address_frag ; 

symbolS *
FUNC8 (expressionS *expressionP)
{
  expressionS zero;
  symbolS *symbolP;
  struct expr_symbol_line *n;

  if (expressionP->X_op == O_symbol
      && expressionP->X_add_number == 0)
    return expressionP->X_add_symbol;

  if (expressionP->X_op == O_big)
    {
      /* This won't work, because the actual value is stored in
	 generic_floating_point_number or generic_bignum, and we are
	 going to lose it if we haven't already.  */
      if (expressionP->X_add_number > 0)
	FUNC1 (FUNC0("bignum invalid"));
      else
	FUNC1 (FUNC0("floating point number invalid"));
      zero.X_op = O_constant;
      zero.X_add_number = 0;
      zero.X_unsigned = 0;
      FUNC3 (&zero);
      expressionP = &zero;
    }

  /* Putting constant symbols in absolute_section rather than
     expr_section is convenient for the old a.out code, for which
     S_GET_SEGMENT does not always retrieve the value put in by
     S_SET_SEGMENT.  */
  symbolP = FUNC5 (FAKE_LABEL_NAME,
			   (expressionP->X_op == O_constant
			    ? absolute_section
			    : expr_section),
			   0, &zero_address_frag);
  FUNC6 (symbolP, expressionP);

  if (expressionP->X_op == O_constant)
    FUNC4 (symbolP);

  n = (struct expr_symbol_line *) FUNC7 (sizeof *n);
  n->sym = symbolP;
  FUNC2 (&n->file, &n->line);
  n->next = expr_symbol_lines;
  expr_symbol_lines = n;

  return symbolP;
}