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
typedef  enum vfp_ldstm_type { ____Placeholder_vfp_ldstm_type } vfp_ldstm_type ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int imm; scalar_t__ writeback; } ;

/* Variables and functions */
 int VFP_LDSTMDBX ; 
 int VFP_LDSTMIA ; 
 int VFP_LDSTMIAX ; 
 int /*<<< orphan*/  VFP_REG_Dd ; 
 int WRITE_BACK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC3 (enum vfp_ldstm_type ldstm_type)
{
  int count;

  if (inst.operands[0].writeback)
    inst.instruction |= WRITE_BACK;
  else
    FUNC1 (ldstm_type != VFP_LDSTMIA && ldstm_type != VFP_LDSTMIAX,
		FUNC0("this addressing mode requires base-register writeback"));

  inst.instruction |= inst.operands[0].reg << 16;
  FUNC2 (inst.operands[1].reg, VFP_REG_Dd);

  count = inst.operands[1].imm << 1;
  if (ldstm_type == VFP_LDSTMIAX || ldstm_type == VFP_LDSTMDBX)
    count += 1;

  inst.instruction |= count;
}