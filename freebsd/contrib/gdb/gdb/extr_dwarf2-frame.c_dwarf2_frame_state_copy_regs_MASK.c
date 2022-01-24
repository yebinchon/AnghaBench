#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dwarf2_frame_state_reg_info {int num_regs; int /*<<< orphan*/  reg; } ;
struct dwarf2_frame_state_reg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwarf2_frame_state_reg*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (size_t) ; 

__attribute__((used)) static struct dwarf2_frame_state_reg *
FUNC2 (struct dwarf2_frame_state_reg_info *rs)
{
  size_t size = rs->num_regs * sizeof (struct dwarf2_frame_state_reg_info);
  struct dwarf2_frame_state_reg *reg;

  reg = (struct dwarf2_frame_state_reg *) FUNC1 (size);
  FUNC0 (reg, rs->reg, size);

  return reg;
}