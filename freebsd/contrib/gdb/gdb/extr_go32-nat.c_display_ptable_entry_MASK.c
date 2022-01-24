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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (unsigned long entry, int is_dir, int force, unsigned off)
{
  if ((entry & 1) != 0)
    {
      FUNC0 ("Base=0x%05lx000", entry >> 12);
      if ((entry & 0x100) && !is_dir)
	FUNC1 (" Global");
      if ((entry & 0x40) && !is_dir)
	FUNC1 (" Dirty");
      FUNC0 (" %sAcc.", (entry & 0x20) ? "" : "Not-");
      FUNC0 (" %sCached", (entry & 0x10) ? "" : "Not-");
      FUNC0 (" Write-%s", (entry & 8) ? "Thru" : "Back");
      FUNC0 (" %s", (entry & 4) ? "Usr" : "Sup");
      FUNC0 (" Read-%s", (entry & 2) ? "Write" : "Only");
      if (off)
	FUNC0 (" +0x%x", off);
      FUNC1 ("\n");
    }
  else if (force)
    FUNC0 ("Page%s not present or not supported; value=0x%lx.\n",
		     is_dir ? " Table" : "", entry >> 1);
}