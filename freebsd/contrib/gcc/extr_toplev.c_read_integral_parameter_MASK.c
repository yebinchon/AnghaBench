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
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

int
FUNC3 (const char *p, const char *pname, const int  defval)
{
  const char *endp = p;

  while (*endp)
    {
      if (FUNC0 (*endp))
	endp++;
      else
	break;
    }

  if (*endp != 0)
    {
      if (pname != 0)
	FUNC2 ("invalid option argument %qs", pname);
      return defval;
    }

  return FUNC1 (p);
}