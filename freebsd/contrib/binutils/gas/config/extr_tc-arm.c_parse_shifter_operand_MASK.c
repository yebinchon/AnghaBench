#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ X_op; int X_add_number; } ;
typedef  TYPE_3__ expressionS ;
struct TYPE_7__ {scalar_t__ pc_rel; int /*<<< orphan*/  type; TYPE_3__ exp; } ;
struct TYPE_9__ {TYPE_2__ reloc; void* error; TYPE_1__* operands; } ;
struct TYPE_6__ {int reg; int isreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_ARM_IMMEDIATE ; 
 int FAIL ; 
 int /*<<< orphan*/  GE_IMM_PREFIX ; 
 int /*<<< orphan*/  GE_NO_PREFIX ; 
 int /*<<< orphan*/  NO_SHIFT_RESTRICT ; 
 scalar_t__ O_constant ; 
 int /*<<< orphan*/  REG_TYPE_RN ; 
 int SUCCESS ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (char**,int /*<<< orphan*/ ) ; 
 TYPE_5__ inst ; 
 scalar_t__ FUNC2 (TYPE_3__*,char**,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char**) ; 

__attribute__((used)) static int
FUNC5 (char **str, int i)
{
  int value;
  expressionS expr;

  if ((value = FUNC1 (str, REG_TYPE_RN)) != FAIL)
    {
      inst.operands[i].reg = value;
      inst.operands[i].isreg = 1;

      /* parse_shift will override this if appropriate */
      inst.reloc.exp.X_op = O_constant;
      inst.reloc.exp.X_add_number = 0;

      if (FUNC4 (str) == FAIL)
	return SUCCESS;

      /* Shift operation on register.  */
      return FUNC3 (str, i, NO_SHIFT_RESTRICT);
    }

  if (FUNC2 (&inst.reloc.exp, str, GE_IMM_PREFIX))
    return FAIL;

  if (FUNC4 (str) == SUCCESS)
    {
      /* #x, y -- ie explicit rotation by Y.  */
      if (FUNC2 (&expr, str, GE_NO_PREFIX))
	return FAIL;

      if (expr.X_op != O_constant || inst.reloc.exp.X_op != O_constant)
	{
	  inst.error = FUNC0("constant expression expected");
	  return FAIL;
	}

      value = expr.X_add_number;
      if (value < 0 || value > 30 || value % 2 != 0)
	{
	  inst.error = FUNC0("invalid rotation");
	  return FAIL;
	}
      if (inst.reloc.exp.X_add_number < 0 || inst.reloc.exp.X_add_number > 255)
	{
	  inst.error = FUNC0("invalid constant");
	  return FAIL;
	}

      /* Convert to decoded value.  md_apply_fix will put it back.  */
      inst.reloc.exp.X_add_number
	= (((inst.reloc.exp.X_add_number << (32 - value))
	    | (inst.reloc.exp.X_add_number >> value)) & 0xffffffff);
    }

  inst.reloc.type = BFD_RELOC_ARM_IMMEDIATE;
  inst.reloc.pc_rel = 0;
  return SUCCESS;
}