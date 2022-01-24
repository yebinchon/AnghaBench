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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int ALPHA_ZERO_REGNUM ; 
 int PC_REGNUM ; 
 int SIZEOF_STRUCT_FPREG ; 
 int SIZEOF_TRAPFRAME ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (char *core_reg_sect, unsigned core_reg_size, int which,
                      CORE_ADDR ignore)
{
  char *regs, *fpregs;
  int regno;

  /* Table to map a gdb register number to a trapframe register index.  */
  static const int regmap[] =
  {
     0,   1,   2,   3,
     4,   5,   6,   7,
     8,   9,  10,  11,
    12,  13,  14,  15, 
    30,  31,  32,  16, 
    17,  18,  19,  20,
    21,  22,  23,  24,
    25,  29,  26
  };
#define SIZEOF_TRAPFRAME (33 * 8)

  /* We get everything from one section.  */
  if (which != 0)
    return;

  regs = core_reg_sect;
  fpregs = core_reg_sect + SIZEOF_TRAPFRAME;

  if (core_reg_size < (SIZEOF_TRAPFRAME + SIZEOF_STRUCT_FPREG))
    {
      FUNC2 ("Wrong size register set in core file.");
      return;
    }

  /* Integer registers.  */
  for (regno = 0; regno < ALPHA_ZERO_REGNUM; regno++)
    FUNC1 (regno, regs + (regmap[regno] * 8));
  FUNC1 (ALPHA_ZERO_REGNUM, NULL);
  FUNC1 (PC_REGNUM, regs + (28 * 8));

  /* Floating point registers.  */
  FUNC0 (fpregs, -1);
}