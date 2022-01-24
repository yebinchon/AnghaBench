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
struct gdbarch_tdep {int jb_pc; int jb_elt_size; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_A1_REGNUM ; 
 int INT_REGISTER_SIZE ; 
 int /*<<< orphan*/  current_gdbarch ; 
 scalar_t__ FUNC0 (char*,int) ; 
 struct gdbarch_tdep* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,int) ; 

__attribute__((used)) static int
FUNC4 (CORE_ADDR *pc)
{
  CORE_ADDR jb_addr;
  char buf[INT_REGISTER_SIZE];
  struct gdbarch_tdep *tdep = FUNC1 (current_gdbarch);
  
  jb_addr = FUNC2 (ARM_A1_REGNUM);

  if (FUNC3 (jb_addr + tdep->jb_pc * tdep->jb_elt_size, buf,
			  INT_REGISTER_SIZE))
    return 0;

  *pc = FUNC0 (buf, INT_REGISTER_SIZE);
  return 1;
}