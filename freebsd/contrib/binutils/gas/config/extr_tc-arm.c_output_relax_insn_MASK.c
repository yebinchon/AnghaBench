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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_5__ {int X_op; int X_add_number; int /*<<< orphan*/ * X_add_symbol; } ;
struct TYPE_4__ {TYPE_2__ exp; } ;
struct TYPE_6__ {int /*<<< orphan*/  instruction; int /*<<< orphan*/  relax; TYPE_1__ reloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSN_SIZE ; 
#define  O_constant 129 
#define  O_symbol 128 
 int /*<<< orphan*/  THUMB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_3__ inst ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_machine_dependent ; 

__attribute__((used)) static void
FUNC4 (void)
{
  char * to;
  symbolS *sym;
  int offset;

  /* The size of the instruction is unknown, so tie the debug info to the
     start of the instruction.  */
  FUNC0 (0);

  switch (inst.reloc.exp.X_op)
    {
    case O_symbol:
      sym = inst.reloc.exp.X_add_symbol;
      offset = inst.reloc.exp.X_add_number;
      break;
    case O_constant:
      sym = NULL;
      offset = inst.reloc.exp.X_add_number;
      break;
    default:
      sym = FUNC2 (&inst.reloc.exp);
      offset = 0;
      break;
  }
  to = FUNC1 (rs_machine_dependent, INSN_SIZE, THUMB_SIZE,
		 inst.relax, sym, offset, NULL/*offset, opcode*/);
  FUNC3 (to, inst.instruction, THUMB_SIZE);
}