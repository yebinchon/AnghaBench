#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gdbarch {int dummy; } ;
struct TYPE_2__ {int mm0_regnum; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct gdbarch*) ; 
 int i386_num_mmx_regs ; 

__attribute__((used)) static int
FUNC1 (struct gdbarch *gdbarch, int regnum)
{
  int mm0_regnum = FUNC0 (gdbarch)->mm0_regnum;

  if (mm0_regnum < 0)
    return 0;

  return (regnum >= mm0_regnum && regnum < mm0_regnum + i386_num_mmx_regs);
}