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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

char **
FUNC4 (char **argv)
{
  int argc;
  char **copy;
  
  if (argv == NULL)
    return NULL;
  
  /* the vector */
  for (argc = 0; argv[argc] != NULL; argc++);
  copy = (char **) FUNC1 ((argc + 1) * sizeof (char *));
  if (copy == NULL)
    return NULL;
  
  /* the strings */
  for (argc = 0; argv[argc] != NULL; argc++)
    {
      int len = FUNC3 (argv[argc]);
      copy[argc] = (char *) FUNC1 (len + 1);
      if (copy[argc] == NULL)
	{
	  FUNC0 (copy);
	  return NULL;
	}
      FUNC2 (copy[argc], argv[argc]);
    }
  copy[argc] = NULL;
  return copy;
}