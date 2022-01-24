#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * X_add_symbol; int /*<<< orphan*/  X_add_number; int /*<<< orphan*/ * X_op_symbol; int /*<<< orphan*/  X_op; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_ADDI_INSN ; 
 int /*<<< orphan*/  BFD_RELOC_LO16 ; 
 int /*<<< orphan*/  O_constant ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4 (int dest, expressionS *local)
{
  expressionS global;

  global.X_op = O_constant;
  global.X_op_symbol = NULL;
  global.X_add_symbol = NULL;
  global.X_add_number = local->X_add_number;

  FUNC2 (local->X_add_symbol);
  FUNC0 (&global, ADDRESS_ADDI_INSN, "t,r,j",
	       dest, dest, BFD_RELOC_LO16);
  FUNC3 ();
  FUNC0 (local, ADDRESS_ADDI_INSN, "t,r,j", dest, dest, BFD_RELOC_LO16);
  FUNC1 ();
}