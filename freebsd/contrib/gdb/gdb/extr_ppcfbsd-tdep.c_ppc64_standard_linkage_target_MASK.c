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
struct gdbarch_tdep {scalar_t__ ppc_gp0_regnum; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 struct gdbarch_tdep* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static CORE_ADDR
FUNC5 (CORE_ADDR pc, unsigned int *insn)
{
  struct gdbarch_tdep *tdep = FUNC0 (current_gdbarch);

  /* The address of the function descriptor this linkage function
     references.  */
  CORE_ADDR desc
    = ((CORE_ADDR) FUNC4 (tdep->ppc_gp0_regnum + 2)
       + (FUNC1 (insn[0]) << 16)
       + FUNC2 (insn[2]));

  /* The first word of the descriptor is the entry point.  Return that.  */
  return FUNC3 (desc);
}