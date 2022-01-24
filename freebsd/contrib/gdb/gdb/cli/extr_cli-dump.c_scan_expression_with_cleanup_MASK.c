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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*,int) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC4 (char const*) ; 

char *
FUNC5 (char **cmd, const char *def)
{
  if ((*cmd) == NULL || (**cmd) == '\0')
    {
      char *exp = FUNC4 (def);
      FUNC0 (xfree, exp);
      return exp;
    }
  else
    {
      char *exp;
      char *end;

      end = (*cmd) + FUNC3 (*cmd, " \t");
      exp = FUNC1 ((*cmd), end - (*cmd));
      FUNC0 (xfree, exp);
      (*cmd) = FUNC2 (end);
      return exp;
    }
}