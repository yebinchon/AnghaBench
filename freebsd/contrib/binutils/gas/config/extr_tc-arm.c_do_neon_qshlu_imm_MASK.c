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
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NS_DDI ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQI ; 
 scalar_t__ NT_unsigned ; 
 int N_EQK ; 
 int N_KEY ; 
 int N_S16 ; 
 int N_S32 ; 
 int N_S64 ; 
 int N_S8 ; 
 int N_UNS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct neon_type_el,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (void)
{
  enum neon_shape rs = FUNC5 (NS_DDI, NS_QQI, NS_NULL);
  struct neon_type_el et = FUNC2 (2, rs,
    N_EQK | N_UNS, N_S8 | N_S16 | N_S32 | N_S64 | N_KEY);
  int imm = inst.operands[2].imm;
  FUNC1 (imm < 0 || (unsigned)imm >= et.size,
              FUNC0("immediate out of range for shift"));
  /* Only encodes the 'U present' variant of the instruction.
     In this case, signed types have OP (bit 8) set to 0.
     Unsigned types have OP set to 1.  */
  inst.instruction |= (et.type == NT_unsigned) << 8;
  /* The rest of the bits are the same as other immediate shifts.  */
  FUNC3 (FALSE, 0, FUNC4 (rs), et, imm);
}