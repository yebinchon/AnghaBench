#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int bfd_vma ;
typedef  int bfd_boolean ;
struct TYPE_6__ {int X_add_number; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ exp; } ;
struct TYPE_8__ {int instruction; TYPE_3__ reloc; TYPE_1__* operands; } ;
struct TYPE_5__ {int reg; } ;

/* Variables and functions */
 scalar_t__ BFD_RELOC_ARM_MOVT ; 
 scalar_t__ BFD_RELOC_ARM_MOVW ; 
 scalar_t__ BFD_RELOC_ARM_THUMB_MOVT ; 
 scalar_t__ BFD_RELOC_ARM_THUMB_MOVW ; 
 scalar_t__ BFD_RELOC_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_4__ inst ; 

__attribute__((used)) static void
FUNC2 (void)
{
  bfd_vma imm;
  bfd_boolean top;

  top = (inst.instruction & 0x00800000) != 0;
  if (inst.reloc.type == BFD_RELOC_ARM_MOVW)
    {
      FUNC1 (top, FUNC0(":lower16: not allowed this instruction"));
      inst.reloc.type = BFD_RELOC_ARM_THUMB_MOVW;
    }
  else if (inst.reloc.type == BFD_RELOC_ARM_MOVT)
    {
      FUNC1 (!top, FUNC0(":upper16: not allowed this instruction"));
      inst.reloc.type = BFD_RELOC_ARM_THUMB_MOVT;
    }

  inst.instruction |= inst.operands[0].reg << 8;
  if (inst.reloc.type == BFD_RELOC_UNUSED)
    {
      imm = inst.reloc.exp.X_add_number;
      inst.instruction |= (imm & 0xf000) << 4;
      inst.instruction |= (imm & 0x0800) << 15;
      inst.instruction |= (imm & 0x0700) << 4;
      inst.instruction |= (imm & 0x00ff);
    }
}