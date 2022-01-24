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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  processing_spec_function ; 
 char* FUNC5 (char const*,int) ; 

__attribute__((used)) static const char *
FUNC6 (const char *p)
{
  char *func, *args;
  const char *endp, *funcval;
  int count;

  processing_spec_function++;

  /* Get the function name.  */
  for (endp = p; *endp != '\0'; endp++)
    {
      if (*endp == '(')		/* ) */
        break;
      /* Only allow [A-Za-z0-9], -, and _ in function names.  */
      if (!FUNC0 (*endp) && !(*endp == '-' || *endp == '_'))
	FUNC3 ("malformed spec function name");
    }
  if (*endp != '(')		/* ) */
    FUNC3 ("no arguments for spec function");
  func = FUNC5 (p, endp - p);
  p = ++endp;

  /* Get the arguments.  */
  for (count = 0; *endp != '\0'; endp++)
    {
      /* ( */
      if (*endp == ')')
	{
	  if (count == 0)
	    break;
	  count--;
	}
      else if (*endp == '(')	/* ) */
	count++;
    }
  /* ( */
  if (*endp != ')')
    FUNC3 ("malformed spec function arguments");
  args = FUNC5 (p, endp - p);
  p = ++endp;

  /* p now points to just past the end of the spec function expression.  */

  funcval = FUNC2 (func, args);
  if (funcval != NULL && FUNC1 (funcval, 0, NULL) < 0)
    p = NULL;

  FUNC4 (func);
  FUNC4 (args);

  processing_spec_function--;

  return p;
}