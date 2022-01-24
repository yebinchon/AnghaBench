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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char**,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC2 (CORE_ADDR pc, char *name)
{
  CORE_ADDR start_addr;

  /* Find the starting address of the function containing the PC.  If the
     caller didn't give us a name, look it up at the same time.  */
  if (FUNC0 (pc, name ? NULL : &name, &start_addr, NULL) ==
      0)
    return 0;

  if (FUNC1 (name, "__mips16_call_stub_", 19) == 0)
    {
      /* If the PC is in __mips16_call_stub_{1..10}, this is a call stub.  */
      if (name[19] >= '0' && name[19] <= '9')
	return 1;
      /* If the PC at the start of __mips16_call_stub_{s,d}f_{0..10}, i.e.
         before the jal instruction, this is effectively a call stub.  */
      else if (name[19] == 's' || name[19] == 'd')
	return pc == start_addr;
    }

  return 0;			/* not a stub */
}