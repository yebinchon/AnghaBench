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
struct st_entry {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  I0_REGNUM ; 
 unsigned int NUM_REGS ; 
 int /*<<< orphan*/  ec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* regmap ; 
 int /*<<< orphan*/  st_t ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,char*) ; 

__attribute__((used)) static void
FUNC3 (char *core_reg_sect, unsigned core_reg_size, int which,
		      CORE_ADDR reg_addr)
{
  struct st_entry s;
  unsigned int regno;

  for (regno = 0; regno < NUM_REGS; regno++)
    if (regmap[regno] != -1)
      FUNC2 (regno, core_reg_sect + FUNC1 (st_t, ec)
		       + regmap[regno]);

#ifdef SPARC
/* Fetching this register causes all of the I & L regs to be read from the
   stack and validated.  */

  fetch_inferior_registers (I0_REGNUM);
#endif
}