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
struct neon_type_el {unsigned int size; scalar_t__ type; } ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int imm; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  NS_QDI ; 
 scalar_t__ NT_unsigned ; 
 int N_DBL ; 
 int N_EQK ; 
 int N_I16 ; 
 int N_I32 ; 
 int N_I8 ; 
 int N_KEY ; 
 int N_SU_32 ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC4 (int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct neon_type_el,unsigned int) ; 
 int FUNC7 (unsigned int) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  /* FIXME: Type checking when lengthening.  */
  struct neon_type_el et = FUNC4 (2, NS_QDI,
    N_EQK | N_DBL, N_I8 | N_I16 | N_I32 | N_KEY);
  unsigned imm = inst.operands[2].imm;

  if (imm == et.size)
    {
      /* Maximum shift variant.  */
      inst.instruction = FUNC3 (inst.instruction);
      inst.instruction |= FUNC1 (inst.operands[0].reg) << 12;
      inst.instruction |= FUNC0 (inst.operands[0].reg) << 22;
      inst.instruction |= FUNC1 (inst.operands[1].reg);
      inst.instruction |= FUNC0 (inst.operands[1].reg) << 5;
      inst.instruction |= FUNC7 (et.size) << 18;
      
      inst.instruction = FUNC5 (inst.instruction);
    }
  else
    {
      /* A more-specific type check for non-max versions.  */
      et = FUNC4 (2, NS_QDI,
        N_EQK | N_DBL, N_SU_32 | N_KEY);
      inst.instruction = FUNC2 (inst.instruction);
      FUNC6 (TRUE, et.type == NT_unsigned, 0, et, imm);
    }
}