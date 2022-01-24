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
 char* FUNC0 (char const*,char const) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t const) ; 

char *
FUNC3 (const char *s1, const char *s2)
{
  const char *p = s1;
  const size_t len = FUNC1 (s2);

  for (; (p = FUNC0 (p, *s2)) != 0; p++)
    {
      if (FUNC2 (p, s2, len) == 0)
	return (char *)p;
    }
  return (0);
}