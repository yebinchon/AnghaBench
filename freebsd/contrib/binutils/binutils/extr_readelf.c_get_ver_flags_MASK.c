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
 unsigned int VER_FLG_BASE ; 
 unsigned int VER_FLG_WEAK ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char *
FUNC2 (unsigned int flags)
{
  static char buff[32];

  buff[0] = 0;

  if (flags == 0)
    return FUNC0("none");

  if (flags & VER_FLG_BASE)
    FUNC1 (buff, "BASE ");

  if (flags & VER_FLG_WEAK)
    {
      if (flags & VER_FLG_BASE)
	FUNC1 (buff, "| ");

      FUNC1 (buff, "WEAK ");
    }

  if (flags & ~(VER_FLG_BASE | VER_FLG_WEAK))
    FUNC1 (buff, "| <unknown>");

  return buff;
}