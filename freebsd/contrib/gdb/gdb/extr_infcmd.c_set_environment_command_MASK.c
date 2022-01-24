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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  inferior_environ ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (char *arg, int from_tty)
{
  char *p, *val, *var;
  int nullset = 0;

  if (arg == 0)
    FUNC0 ("environment variable and value");

  /* Find seperation between variable name and value */
  p = (char *) FUNC4 (arg, '=');
  val = (char *) FUNC4 (arg, ' ');

  if (p != 0 && val != 0)
    {
      /* We have both a space and an equals.  If the space is before the
         equals, walk forward over the spaces til we see a nonspace 
         (possibly the equals). */
      if (p > val)
	while (*val == ' ')
	  val++;

      /* Now if the = is after the char following the spaces,
         take the char following the spaces.  */
      if (p > val)
	p = val - 1;
    }
  else if (val != 0 && p == 0)
    p = val;

  if (p == arg)
    FUNC0 ("environment variable to set");

  if (p == 0 || p[1] == 0)
    {
      nullset = 1;
      if (p == 0)
	p = arg + FUNC5 (arg);	/* So that savestring below will work */
    }
  else
    {
      /* Not setting variable value to null */
      val = p + 1;
      while (*val == ' ' || *val == '\t')
	val++;
    }

  while (p != arg && (p[-1] == ' ' || p[-1] == '\t'))
    p--;

  var = FUNC2 (arg, p - arg);
  if (nullset)
    {
      FUNC1 ("Setting environment variable ");
      FUNC1 ("\"%s\" to null value.\n", var);
      FUNC3 (inferior_environ, var, "");
    }
  else
    FUNC3 (inferior_environ, var, val);
  FUNC6 (var);
}