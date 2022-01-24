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
struct TYPE_3__ {int imm; int reg; scalar_t__ writeback; int /*<<< orphan*/  immisreg; scalar_t__ postind; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  NEON_ALL_LANES 129 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
#define  NEON_INTERLEAVE_LANES 128 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_2__ inst ; 
 scalar_t__ thumb_mode ; 

__attribute__((used)) static void
FUNC11 (void)
{
  switch (FUNC5 (inst.operands[0].imm))
    {
    case NEON_INTERLEAVE_LANES:
      inst.instruction = FUNC3 (inst.instruction);
      FUNC9 ();
      break;
    
    case NEON_ALL_LANES:
      inst.instruction = FUNC2 (inst.instruction);
      FUNC8 ();
      break;
    
    default:
      inst.instruction = FUNC4 (inst.instruction);
      FUNC10 ();
    }

  /* L bit comes from bit mask.  */
  inst.instruction |= FUNC1 (inst.operands[0].reg) << 12;
  inst.instruction |= FUNC0 (inst.operands[0].reg) << 22;
  inst.instruction |= inst.operands[1].reg << 16;
  
  if (inst.operands[1].postind)
    {
      int postreg = inst.operands[1].imm & 0xf;
      FUNC7 (!inst.operands[1].immisreg,
                  FUNC6("post-index must be a register"));
      FUNC7 (postreg == 0xd || postreg == 0xf,
                  FUNC6("bad register for post-index"));
      inst.instruction |= postreg;
    }
  else if (inst.operands[1].writeback)
    {
      inst.instruction |= 0xd;
    }
  else
    inst.instruction |= 0xf; 
  
  if (thumb_mode)
    inst.instruction |= 0xf9000000;
  else
    inst.instruction |= 0xf4000000;
}