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
 char* FUNC0 (char*,char) ; 

__attribute__((used)) static void
FUNC1 (char *scratch, char **argv)
{
  char *cp = scratch;

  for (;;)
    {

      /* Scan past leading separators */
      while (*cp == ' ' || *cp == '\t' || *cp == '\n')
	{
	  cp++;
	}

      /* Break if at end of string */
      if (*cp == '\0')
	break;

      /* Take an arg */
      *argv++ = cp;

      /* Scan for next arg separator */
      cp = FUNC0 (cp, ' ');
      if (cp == NULL)
	cp = FUNC0 (cp, '\t');
      if (cp == NULL)
	cp = FUNC0 (cp, '\n');

      /* No separators => end of string => break */
      if (cp == NULL)
	break;

      /* Replace the separator with a terminator */
      *cp++ = '\0';
    }

  /* execv requires a null-terminated arg vector */
  *argv = NULL;

}