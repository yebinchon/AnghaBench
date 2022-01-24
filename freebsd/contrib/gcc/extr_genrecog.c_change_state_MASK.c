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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const,...) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 

__attribute__((used)) static void
FUNC5 (const char *oldpos, const char *newpos, const char *indent)
{
  int odepth = FUNC3 (oldpos);
  int ndepth = FUNC3 (newpos);
  int depth;
  int old_has_insn, new_has_insn;

  /* Pop up as many levels as necessary.  */
  for (depth = odepth; FUNC4 (oldpos, newpos, depth) != 0; --depth)
    continue;

  /* Hunt for the last [A-Z] in both strings.  */
  for (old_has_insn = odepth - 1; old_has_insn >= 0; --old_has_insn)
    if (FUNC1 (oldpos[old_has_insn]))
      break;
  for (new_has_insn = ndepth - 1; new_has_insn >= 0; --new_has_insn)
    if (FUNC1 (newpos[new_has_insn]))
      break;

  /* Go down to desired level.  */
  while (depth < ndepth)
    {
      /* It's a different insn from the first one.  */
      if (FUNC1 (newpos[depth]))
	{
	  FUNC2 ("%stem = peep2_next_insn (%d);\n",
		  indent, newpos[depth] - 'A');
	  FUNC2 ("%sx%d = PATTERN (tem);\n", indent, depth + 1);
	}
      else if (FUNC0 (newpos[depth]))
	FUNC2 ("%sx%d = XVECEXP (x%d, 0, %d);\n",
		indent, depth + 1, depth, newpos[depth] - 'a');
      else
	FUNC2 ("%sx%d = XEXP (x%d, %c);\n",
		indent, depth + 1, depth, newpos[depth]);
      ++depth;
    }
}