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
  char *pp, *cp = scratch;
  char quoting = 0;

  for (;;)
    {
      /* Scan past leading separators.  */
      quoting = 0;
      while (*cp == ' ' || *cp == '\t' || *cp == '\n')
	cp++;

      /* Break if at end of string.  */
      if (*cp == '\0')
	break;

      /* Take an arg.  */
      if (*cp == '"')
	{
	  cp++;
	  quoting = FUNC0 (cp, '"') ? 1 : 0;
	}

      *argv++ = cp;

      /* Scan for next arg separator.  */
      pp = cp;
      if (quoting)
	cp = FUNC0 (pp, '"');
      if ((cp == NULL) || (!quoting))
	cp = FUNC0 (pp, ' ');
      if (cp == NULL)
	cp = FUNC0 (pp, '\t');
      if (cp == NULL)
	cp = FUNC0 (pp, '\n');

      /* No separators => end of string => break.  */
      if (cp == NULL)
	{
	  pp = cp;
	  break;
	}

      /* Replace the separator with a terminator.  */
      *cp++ = '\0';
    }

  /* Execv requires a null-terminated arg vector.  */
  *argv = NULL;
}