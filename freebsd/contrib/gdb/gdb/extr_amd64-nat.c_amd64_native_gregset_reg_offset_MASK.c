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

/* Variables and functions */
 int NUM_REGS ; 
 int amd64_native_gregset32_num_regs ; 
 int* amd64_native_gregset32_reg_offset ; 
 int amd64_native_gregset64_num_regs ; 
 int* amd64_native_gregset64_reg_offset ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (int regnum)
{
  int *reg_offset = amd64_native_gregset64_reg_offset;
  int num_regs = amd64_native_gregset64_num_regs;

  FUNC0 (regnum >= 0);

  if (FUNC1 (current_gdbarch) == 32)
    {
      reg_offset = amd64_native_gregset32_reg_offset;
      num_regs = amd64_native_gregset32_num_regs;
    }

  if (num_regs > NUM_REGS)
    num_regs = NUM_REGS;

  if (regnum < num_regs && regnum < NUM_REGS)
    return reg_offset[regnum];

  return -1;
}