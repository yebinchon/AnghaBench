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
struct environ {char** vector; int allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,int) ; 

void
FUNC7 (struct environ *e, const char *var, const char *value)
{
  int i;
  int len = FUNC2 (var);
  char **vector = e->vector;
  char *s;

  for (i = 0; (s = vector[i]) != NULL; i++)
    if (FUNC3 (s, var, len) == 0 && s[len] == '=')
      break;

  if (s == 0)
    {
      if (i == e->allocated)
	{
	  e->allocated += 10;
	  vector = (char **) FUNC6 ((char *) vector,
				       (e->allocated + 1) * sizeof (char *));
	  e->vector = vector;
	}
      vector[i + 1] = 0;
    }
  else
    FUNC4 (s);

  s = (char *) FUNC5 (len + FUNC2 (value) + 2);
  FUNC1 (s, var);
  FUNC0 (s, "=");
  FUNC0 (s, value);
  vector[i] = s;

  /* This used to handle setting the PATH and GNUTARGET variables
     specially.  The latter has been replaced by "set gnutarget"
     (which has worked since GDB 4.11).  The former affects searching
     the PATH to find SHELL, and searching the PATH to find the
     argument of "symbol-file" or "exec-file".  Maybe we should have
     some kind of "set exec-path" for that.  But in any event, having
     "set env" affect anything besides the inferior is a bad idea.
     What if we want to change the environment we pass to the program
     without afecting GDB's behavior?  */

  return;
}