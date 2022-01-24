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
struct gdbarch_tdep {int /*<<< orphan*/  mips_processor_reg_names; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  PRID_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct gdbarch_tdep* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_r3041_reg_names ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2 (void)
{
  struct gdbarch_tdep *tdep = FUNC0 (current_gdbarch);
  CORE_ADDR prid;

  prid = FUNC1 (PRID_REGNUM);

  if ((prid & ~0xf) == 0x700)
    tdep->mips_processor_reg_names = mips_r3041_reg_names;
}