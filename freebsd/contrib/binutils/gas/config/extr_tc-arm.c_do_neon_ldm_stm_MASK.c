#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int writeback; int reg; scalar_t__ issingle; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC6 (void)
{
  /* P, U and L bits are part of bitmask.  */
  int is_dbmode = (inst.instruction & (1 << 24)) != 0;
  unsigned offsetbits = inst.operands[1].imm * 2;

  if (inst.operands[1].issingle)
    {
      FUNC5 (is_dbmode);
      return;
    }

  FUNC3 (is_dbmode && !inst.operands[0].writeback,
              FUNC2("writeback (!) must be used for VLDMDB and VSTMDB"));

  FUNC3 (inst.operands[1].imm < 1 || inst.operands[1].imm > 16,
              FUNC2("register list must contain at least 1 and at most 16 "
                "registers"));

  inst.instruction |= inst.operands[0].reg << 16;
  inst.instruction |= inst.operands[0].writeback << 21;
  inst.instruction |= FUNC1 (inst.operands[1].reg) << 12;
  inst.instruction |= FUNC0 (inst.operands[1].reg) << 22;

  inst.instruction |= offsetbits;
  
  FUNC4 ();
}