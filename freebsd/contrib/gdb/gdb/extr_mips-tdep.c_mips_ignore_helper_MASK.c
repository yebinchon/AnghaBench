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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

int
FUNC2 (CORE_ADDR pc)
{
  char *name;

  /* Find the starting address and name of the function containing the PC.  */
  if (FUNC0 (pc, &name, NULL, NULL) == 0)
    return 0;

  /* If the PC is in __mips16_ret_{d,s}f, this is a library helper function
     that we want to ignore.  */
  return (FUNC1 (name, "__mips16_ret_sf") == 0
	  || FUNC1 (name, "__mips16_ret_df") == 0);
}