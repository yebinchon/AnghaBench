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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ which_alternative ; 

int
FUNC8 (rtx x)
{
  int noperands;
  rtx *operands;
  const char **constraints;
  int i;

  /* Post-reload, be more strict with things.  */
  if (reload_completed)
    {
      /* ??? Doh!  We've not got the wrapping insn.  Cook one up.  */
      FUNC6 (FUNC7 (x));
      FUNC4 (1);
      return which_alternative >= 0;
    }

  noperands = FUNC2 (x);
  if (noperands < 0)
    return 0;
  if (noperands == 0)
    return 1;

  operands = FUNC1 (noperands * sizeof (rtx));
  constraints = FUNC1 (noperands * sizeof (char *));

  FUNC5 (x, operands, NULL, constraints, NULL);

  for (i = 0; i < noperands; i++)
    {
      const char *c = constraints[i];
      if (c[0] == '%')
	c++;
      if (FUNC0 ((unsigned char) c[0]) && c[1] == '\0')
	c = constraints[c[0] - '0'];

      if (! FUNC3 (operands[i], c))
	return 0;
    }

  return 1;
}