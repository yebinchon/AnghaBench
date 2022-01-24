#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int X_add_number; } ;
struct TYPE_6__ {TYPE_1__ exp; } ;
struct TYPE_8__ {void* error; TYPE_3__* operands; TYPE_2__ reloc; } ;
struct TYPE_7__ {int reg; int imm; int shifted; } ;

/* Variables and functions */
 int FAIL ; 
 size_t REG_TYPE_RN ; 
 int /*<<< orphan*/  SHIFT_LSL_IMMEDIATE ; 
 int SUCCESS ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (char**,size_t) ; 
 TYPE_4__ inst ; 
 int FUNC2 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** reg_expected_msgs ; 
 int FUNC3 (char**,char) ; 
 int FUNC4 (char**) ; 

__attribute__((used)) static int
FUNC5 (char **str)
{
  char * p = *str;
  int reg;

  if (FUNC3 (&p, '[') == FAIL)
    {
      inst.error = FUNC0("'[' expected");
      return FAIL;
    }

  if ((reg = FUNC1 (&p, REG_TYPE_RN)) == FAIL)
    {
      inst.error = FUNC0(reg_expected_msgs[REG_TYPE_RN]);
      return FAIL;
    }
  inst.operands[0].reg = reg;

  if (FUNC4 (&p) == FAIL)
    {
      inst.error = FUNC0("',' expected");
      return FAIL;
    }
  
  if ((reg = FUNC1 (&p, REG_TYPE_RN)) == FAIL)
    {
      inst.error = FUNC0(reg_expected_msgs[REG_TYPE_RN]);
      return FAIL;
    }
  inst.operands[0].imm = reg;

  if (FUNC4 (&p) == SUCCESS)
    {
      if (FUNC2 (&p, 0, SHIFT_LSL_IMMEDIATE) == FAIL)
	return FAIL;
      if (inst.reloc.exp.X_add_number != 1)
	{
	  inst.error = FUNC0("invalid shift");
	  return FAIL;
	}
      inst.operands[0].shifted = 1;
    }

  if (FUNC3 (&p, ']') == FAIL)
    {
      inst.error = FUNC0("']' expected");
      return FAIL;
    }
  *str = p;
  return SUCCESS;
}