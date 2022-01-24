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
struct TYPE_4__ {int /*<<< orphan*/  instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int reg; int /*<<< orphan*/  imm; int /*<<< orphan*/  isreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_DDD ; 
 int /*<<< orphan*/  NS_DDI ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQI ; 
 int /*<<< orphan*/  NS_QQQ ; 
 scalar_t__ NT_unsigned ; 
 int N_EQK ; 
 int N_I_ALL ; 
 int N_KEY ; 
 int N_SGN ; 
 int N_SU_ALL ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC2 (int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct neon_type_el,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  if (!inst.operands[2].isreg)
    {
      enum neon_shape rs = FUNC5 (NS_DDI, NS_QQI, NS_NULL);
      struct neon_type_el et = FUNC2 (2, rs, N_EQK, N_KEY | N_I_ALL);
      inst.instruction = FUNC0 (inst.instruction);
      FUNC3 (FALSE, 0, FUNC4 (rs), et, inst.operands[2].imm);
    }
  else
    {
      enum neon_shape rs = FUNC5 (NS_DDD, NS_QQQ, NS_NULL);
      struct neon_type_el et = FUNC2 (3, rs,
        N_EQK, N_SU_ALL | N_KEY, N_EQK | N_SGN);
      unsigned int tmp;

      /* VSHL/VQSHL 3-register variants have syntax such as:
           vshl.xx Dd, Dm, Dn
         whereas other 3-register operations encoded by neon_three_same have
         syntax like:
           vadd.xx Dd, Dn, Dm
         (i.e. with Dn & Dm reversed). Swap operands[1].reg and operands[2].reg
         here.  */
      tmp = inst.operands[2].reg;
      inst.operands[2].reg = inst.operands[1].reg;
      inst.operands[1].reg = tmp;
      inst.instruction = FUNC1 (inst.instruction);
      FUNC6 (FUNC4 (rs), et.type == NT_unsigned, et.size);
    }
}