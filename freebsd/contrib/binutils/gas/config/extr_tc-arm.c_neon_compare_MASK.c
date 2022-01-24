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
struct neon_type_el {scalar_t__ type; int /*<<< orphan*/  size; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg; scalar_t__ isreg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  NS_DDI ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQI ; 
 scalar_t__ NT_float ; 
 int /*<<< orphan*/  NT_unsigned ; 
 int N_EQK ; 
 unsigned int N_KEY ; 
 int N_SIZ ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC3 (int,int,int,unsigned int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (unsigned regtypes, unsigned immtypes, int invert)
{
  if (inst.operands[2].isreg)
    {
      if (invert)
        FUNC6 ();
      FUNC5 (NT_unsigned, regtypes, N_SIZ);
    }
  else
    {
      enum neon_shape rs = FUNC9 (NS_DDI, NS_QQI, NS_NULL);
      struct neon_type_el et = FUNC3 (2, rs,
        N_EQK | N_SIZ, immtypes | N_KEY);

      inst.instruction = FUNC2 (inst.instruction);
      inst.instruction |= FUNC1 (inst.operands[0].reg) << 12;
      inst.instruction |= FUNC0 (inst.operands[0].reg) << 22;
      inst.instruction |= FUNC1 (inst.operands[1].reg);
      inst.instruction |= FUNC0 (inst.operands[1].reg) << 5;
      inst.instruction |= FUNC8 (rs) << 6;
      inst.instruction |= (et.type == NT_float) << 10;
      inst.instruction |= FUNC7 (et.size) << 18;
      
      inst.instruction = FUNC4 (inst.instruction);
    }
}