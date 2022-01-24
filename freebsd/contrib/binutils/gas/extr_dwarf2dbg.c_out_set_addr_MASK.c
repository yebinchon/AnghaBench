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
struct TYPE_3__ {scalar_t__ X_add_number; int /*<<< orphan*/ * X_add_symbol; int /*<<< orphan*/  X_op; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  DW_LNE_set_address ; 
 int /*<<< orphan*/  DW_LNS_extended_op ; 
 int /*<<< orphan*/  O_symbol ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ sizeof_address ; 

__attribute__((used)) static void
FUNC3 (symbolS *sym)
{
  expressionS expr;

  FUNC1 (DW_LNS_extended_op);
  FUNC2 (sizeof_address + 1);

  FUNC1 (DW_LNE_set_address);
  expr.X_op = O_symbol;
  expr.X_add_symbol = sym;
  expr.X_add_number = 0;
  FUNC0 (&expr, sizeof_address);
}