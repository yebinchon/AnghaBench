#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  inst ;
struct TYPE_8__ {TYPE_1__* arg; } ;
typedef  TYPE_2__ ins ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ constant; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ arg_ic ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  cr16_inst_hash ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  const* instruction ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 

void
FUNC16 (char *op)
{
  ins cr16_ins;
  char *param, param1[32];
  char c;

  /* Reset global variables for a new instruction.  */
  FUNC12 (op);

  /* Strip the mnemonic.  */
  for (param = op; *param != 0 && !FUNC0 (*param); param++)
    ;
  c = *param;
  *param++ = '\0';

  /* bCC instuctions and adjust the mnemonic by adding extra white spaces.  */
  if (FUNC8 (op))
    {
      FUNC14 (param1, FUNC6 (op));
      op = "b";
      FUNC13 (param1,",");
      FUNC13 (param1, param);
      param = (char *) &param1;
    }

  /* Checking the cinv options and adjust the mnemonic by removing the
     extra white spaces.  */
  if (FUNC15 ("cinv", op))
    {
     /* Validate the cinv options.  */
      FUNC4 (param);
      FUNC13 (op, param);
    }

  /* MAPPING - SHIFT INSN, if imm4/imm16 positive values
     lsh[b/w] imm4/imm6, reg ==> ashu[b/w] imm4/imm16, reg
     as CR16 core doesn't support lsh[b/w] right shift operaions.  */
  if ((FUNC15 ("lshb", op) || FUNC15 ("lshw", op) || FUNC15 ("lshd", op))
      && (param [0] == '$'))
    {
      FUNC14 (param1, param);
      /* Find the instruction.  */
      instruction = (const inst *) FUNC7 (cr16_inst_hash, op);
       FUNC10 (&cr16_ins, param1);
      if (((&cr16_ins)->arg[0].type == arg_ic)
	  && ((&cr16_ins)->arg[0].constant >= 0))
        {
           if (FUNC15 ("lshb", op))
	     op = "ashub";
           else if (FUNC15 ("lshd", op))
	     op = "ashud";
	   else
	     op = "ashuw";
        }
    }

  /* Find the instruction.  */
  instruction = (const inst *) FUNC7 (cr16_inst_hash, op);
  if (instruction == NULL)
    {
      FUNC2 (FUNC1("Unknown opcode: `%s'"), op);
      return;
    }

  /* Tie dwarf2 debug info to the address at the start of the insn.  */
  FUNC5 (0);

  /* Parse the instruction's operands.  */
  FUNC9 (&cr16_ins, param);

  /* Assemble the instruction - return upon failure.  */
  if (FUNC3 (op, &cr16_ins) == 0)
    return;

  /* Print the instruction.  */
  FUNC11 (&cr16_ins);
}