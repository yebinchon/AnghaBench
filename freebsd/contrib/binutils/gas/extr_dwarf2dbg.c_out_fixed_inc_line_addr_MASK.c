#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_3__ {scalar_t__ X_add_number; int /*<<< orphan*/ * X_op_symbol; int /*<<< orphan*/ * X_add_symbol; void* X_op; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  DW_LNE_end_sequence ; 
 int /*<<< orphan*/  DW_LNS_advance_line ; 
 int /*<<< orphan*/  DW_LNS_copy ; 
 int /*<<< orphan*/  DW_LNS_extended_op ; 
 int /*<<< orphan*/  DW_LNS_fixed_advance_pc ; 
 int INT_MAX ; 
 void* O_subtract ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (int line_delta, symbolS *to_sym, symbolS *from_sym)
{
  expressionS expr;

  /* INT_MAX is a signal that this is actually a DW_LNE_end_sequence.  */
  if (line_delta == INT_MAX)
    {
      FUNC2 (DW_LNS_fixed_advance_pc);
      expr.X_op = O_subtract;
      expr.X_add_symbol = to_sym;
      expr.X_op_symbol = from_sym;
      expr.X_add_number = 0;
      FUNC0 (&expr, 2);

      FUNC2 (DW_LNS_extended_op);
      FUNC1 (1);
      FUNC2 (DW_LNE_end_sequence);
      return;
    }

  FUNC2 (DW_LNS_advance_line);
  FUNC3 (line_delta);

  FUNC2 (DW_LNS_fixed_advance_pc);
  expr.X_op = O_subtract;
  expr.X_add_symbol = to_sym;
  expr.X_op_symbol = from_sym;
  expr.X_add_number = 0;
  FUNC0 (&expr, 2);

  FUNC2 (DW_LNS_copy);
}