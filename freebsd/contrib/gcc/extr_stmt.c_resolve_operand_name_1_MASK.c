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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char const*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC10 (char *p, tree outputs, tree inputs)
{
  char *q;
  int op;
  tree t;
  size_t len;

  /* Collect the operand name.  */
  q = FUNC7 (p, ']');
  if (!q)
    {
      FUNC3 ("missing close brace for named operand");
      return FUNC7 (p, '\0');
    }
  len = q - p - 1;

  /* Resolve the name to a number.  */
  for (op = 0, t = outputs; t ; t = FUNC0 (t), op++)
    {
      tree name = FUNC1 (FUNC1 (t));
      if (name)
	{
	  const char *c = FUNC2 (name);
	  if (FUNC9 (c, p + 1, len) == 0 && c[len] == '\0')
	    goto found;
	}
    }
  for (t = inputs; t ; t = FUNC0 (t), op++)
    {
      tree name = FUNC1 (FUNC1 (t));
      if (name)
	{
	  const char *c = FUNC2 (name);
	  if (FUNC9 (c, p + 1, len) == 0 && c[len] == '\0')
	    goto found;
	}
    }

  *q = '\0';
  FUNC3 ("undefined named operand %qs", p + 1);
  op = 0;
 found:

  /* Replace the name with the number.  Unfortunately, not all libraries
     get the return value of sprintf correct, so search for the end of the
     generated string by hand.  */
  FUNC6 (p, "%d", op);
  p = FUNC7 (p, '\0');

  /* Verify the no extra buffer space assumption.  */
  FUNC4 (p <= q);

  /* Shift the rest of the buffer down to fill the gap.  */
  FUNC5 (p, q + 1, FUNC8 (q + 1) + 1);

  return p;
}