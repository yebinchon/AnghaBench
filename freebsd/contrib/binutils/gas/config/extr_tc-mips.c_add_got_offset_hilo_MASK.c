#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * X_add_symbol; int /*<<< orphan*/  X_add_number; int /*<<< orphan*/ * X_op_symbol; int /*<<< orphan*/  X_op; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_ADDI_INSN ; 
 int /*<<< orphan*/  ADDRESS_ADD_INSN ; 
 int BFD_RELOC_LO16 ; 
 int /*<<< orphan*/  HAVE_64BIT_ADDRESSES ; 
 int /*<<< orphan*/  O_constant ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int mips_optimize ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6 (int dest, expressionS *local, int tmp)
{
  expressionS global;
  int hold_mips_optimize;

  global.X_op = O_constant;
  global.X_op_symbol = NULL;
  global.X_add_symbol = NULL;
  global.X_add_number = local->X_add_number;

  FUNC4 (local->X_add_symbol);
  FUNC0 (tmp, &global, HAVE_64BIT_ADDRESSES);
  FUNC5 ();
  /* Set mips_optimize around the lui instruction to avoid
     inserting an unnecessary nop after the lw.  */
  hold_mips_optimize = mips_optimize;
  mips_optimize = 2;
  FUNC2 (&global, tmp);
  mips_optimize = hold_mips_optimize;
  FUNC1 (local, ADDRESS_ADDI_INSN, "t,r,j", tmp, tmp, BFD_RELOC_LO16);
  FUNC3 ();

  FUNC1 (NULL, ADDRESS_ADD_INSN, "d,v,t", dest, dest, tmp);
}