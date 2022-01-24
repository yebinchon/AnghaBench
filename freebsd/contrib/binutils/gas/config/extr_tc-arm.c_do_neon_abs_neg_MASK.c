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
struct TYPE_3__ {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NEON_CHECK_ARCH ; 
 int NEON_CHECK_CC ; 
 int /*<<< orphan*/  NS_DD ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQ ; 
 scalar_t__ NT_float ; 
 int /*<<< orphan*/  N_EQK ; 
 int N_F32 ; 
 int N_KEY ; 
 int N_S16 ; 
 int N_S32 ; 
 int N_S8 ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  do_vfp_nsyn_abs_neg ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC2 (int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  enum neon_shape rs;
  struct neon_type_el et;
  
  if (FUNC7 (2, do_vfp_nsyn_abs_neg) == SUCCESS)
    return;

  if (FUNC8 (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
    return;

  rs = FUNC6 (NS_DD, NS_QQ, NS_NULL);
  et = FUNC2 (2, rs, N_EQK, N_S8 | N_S16 | N_S32 | N_F32 | N_KEY);
  
  inst.instruction |= FUNC1 (inst.operands[0].reg) << 12;
  inst.instruction |= FUNC0 (inst.operands[0].reg) << 22;
  inst.instruction |= FUNC1 (inst.operands[1].reg);
  inst.instruction |= FUNC0 (inst.operands[1].reg) << 5;
  inst.instruction |= FUNC5 (rs) << 6;
  inst.instruction |= (et.type == NT_float) << 10;
  inst.instruction |= FUNC4 (et.size) << 18;
  
  inst.instruction = FUNC3 (inst.instruction);
}