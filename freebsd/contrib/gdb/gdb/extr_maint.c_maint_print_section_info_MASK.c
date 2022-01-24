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
typedef  int /*<<< orphan*/  flagword ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4 (const char *name, flagword flags, 
			  CORE_ADDR addr, CORE_ADDR endaddr, 
			  unsigned long filepos)
{
  /* FIXME-32x64: Need print_address_numeric with field width.  */
  FUNC3 ("    0x%s", FUNC1 (addr));
  FUNC3 ("->0x%s", FUNC1 (endaddr));
  FUNC3 (" at %s",
		   FUNC0 ((unsigned long) filepos, "08l"));
  FUNC3 (": %s", name);
  FUNC2 (flags);
  FUNC3 ("\n");
}