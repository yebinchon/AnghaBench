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
struct neon_type_el {int size; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int reg; scalar_t__ isscalar; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  NEON_CHECK_CC ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  NS_DR ; 
 int /*<<< orphan*/  NS_DS ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QR ; 
 int /*<<< orphan*/  NS_QS ; 
 int N_16 ; 
 int N_32 ; 
 int N_8 ; 
 int N_EQK ; 
 int N_KEY ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC7 (int,int,int,int) ; 
 unsigned int FUNC8 (unsigned int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (void)
{
  if (inst.operands[1].isscalar)
    {
      enum neon_shape rs = FUNC11 (NS_DS, NS_QS, NS_NULL);
      struct neon_type_el et = FUNC7 (2, rs,
        N_EQK, N_8 | N_16 | N_32 | N_KEY);
      unsigned sizebits = et.size >> 3;
      unsigned dm = FUNC5 (inst.operands[1].reg);
      int logsize = FUNC9 (et.size);
      unsigned x = FUNC4 (inst.operands[1].reg) << logsize;

      if (FUNC12 (NEON_CHECK_CC) == FAIL)
        return;

      inst.instruction = FUNC3 (inst.instruction);
      inst.instruction |= FUNC1 (inst.operands[0].reg) << 12;
      inst.instruction |= FUNC0 (inst.operands[0].reg) << 22;
      inst.instruction |= FUNC1 (dm);
      inst.instruction |= FUNC0 (dm) << 5;
      inst.instruction |= FUNC10 (rs) << 6;
      inst.instruction |= x << 17;
      inst.instruction |= sizebits << 16;
      
      inst.instruction = FUNC8 (inst.instruction);
    }
  else
    {
      enum neon_shape rs = FUNC11 (NS_DR, NS_QR, NS_NULL);
      struct neon_type_el et = FUNC7 (2, rs,
        N_8 | N_16 | N_32 | N_KEY, N_EQK);
      /* Duplicate ARM register to lanes of vector.  */
      inst.instruction = FUNC2 (inst.instruction);
      switch (et.size)
        {
        case 8:  inst.instruction |= 0x400000; break;
        case 16: inst.instruction |= 0x000020; break;
        case 32: inst.instruction |= 0x000000; break;
        default: break;
        }
      inst.instruction |= FUNC1 (inst.operands[1].reg) << 12;
      inst.instruction |= FUNC1 (inst.operands[0].reg) << 16;
      inst.instruction |= FUNC0 (inst.operands[0].reg) << 7;
      inst.instruction |= FUNC10 (rs) << 21;
      /* The encoding for this instruction is identical for the ARM and Thumb
         variants, except for the condition field.  */
      FUNC6 ();
    }
}