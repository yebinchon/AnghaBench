#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ valueT ;
struct TYPE_5__ {scalar_t__ X_op; int /*<<< orphan*/  X_add_symbol; } ;
typedef  TYPE_1__ expressionS ;
struct TYPE_6__ {scalar_t__ mips16; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAKE_LABEL_NAME ; 
 scalar_t__ O_symbol ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* expr_end ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ frag_now ; 
 scalar_t__ FUNC5 () ; 
 char* input_line_pointer ; 
 TYPE_3__ mips_opts ; 
 scalar_t__ now_seg ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (expressionS *ep, char *str)
{
  char *save_in;
  valueT val;

  save_in = input_line_pointer;
  input_line_pointer = str;
  FUNC4 (ep);
  expr_end = input_line_pointer;
  input_line_pointer = save_in;

  /* If we are in mips16 mode, and this is an expression based on `.',
     then we bump the value of the symbol by 1 since that is how other
     text symbols are handled.  We don't bother to handle complex
     expressions, just `.' plus or minus a constant.  */
  if (mips_opts.mips16
      && ep->X_op == O_symbol
      && FUNC6 (FUNC0 (ep->X_add_symbol), FAKE_LABEL_NAME) == 0
      && FUNC1 (ep->X_add_symbol) == now_seg
      && FUNC8 (ep->X_add_symbol) == frag_now
      && FUNC7 (ep->X_add_symbol)
      && (val = FUNC2 (ep->X_add_symbol)) == FUNC5 ())
    FUNC3 (ep->X_add_symbol, val + 1);
}