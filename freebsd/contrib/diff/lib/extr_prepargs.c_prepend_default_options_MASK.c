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
 int FUNC0 (char const*,char*,char**) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (int) ; 

void
FUNC3 (char const *options, int *pargc, char ***pargv)
{
  if (options)
    {
      char *buf = FUNC2 (FUNC1 (options) + 1);
      int prepended = FUNC0 (options, buf, (char **) 0);
      int argc = *pargc;
      char * const *argv = *pargv;
      char **pp = (char **) FUNC2 ((prepended + argc + 1) * sizeof *pp);
      *pargc = prepended + argc;
      *pargv = pp;
      *pp++ = *argv++;
      pp += FUNC0 (options, buf, pp);
      while ((*pp++ = *argv++))
	continue;
    }
}