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
typedef  int /*<<< orphan*/  regset ;
typedef  int /*<<< orphan*/  nto_regset_t ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *core_reg_sect, unsigned core_reg_size,
		      int which, CORE_ADDR reg_addr)
{
  nto_regset_t regset;

/* See corelow.c:get_core_registers for values of WHICH.  */
  if (which == 0)
    {
      FUNC0 ((char *) &regset, core_reg_sect,
	      FUNC1 (core_reg_size, sizeof (regset)));
      FUNC3 ((char *) &regset);
    }
  else if (which == 2)
    {
      FUNC0 ((char *) &regset, core_reg_sect,
	      FUNC1 (core_reg_size, sizeof (regset)));
      FUNC2 ((char *) &regset);
    }
}