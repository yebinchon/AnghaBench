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
struct saved_stab {char* string; int type; int desc; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int SAVE_STABS_COUNT ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct saved_stab* saved_stabs ; 
 int saved_stabs_index ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4 (void)
{
  int i;

  FUNC2 (stderr, "%s", FUNC0("Last stabs entries before error:\n"));
  FUNC2 (stderr, "n_type n_desc n_value  string\n");

  i = saved_stabs_index;
  do
    {
      struct saved_stab *stabp;

      stabp = saved_stabs + i;
      if (stabp->string != NULL)
	{
	  const char *s;

	  s = FUNC1 (stabp->type);
	  if (s != NULL)
	    FUNC2 (stderr, "%-6s", s);
	  else if (stabp->type == 0)
	    FUNC2 (stderr, "HdrSym");
	  else
	    FUNC2 (stderr, "%-6d", stabp->type);
	  FUNC2 (stderr, " %-6d ", stabp->desc);
	  FUNC3 (stderr, stabp->value);
	  if (stabp->type != 0)
	    FUNC2 (stderr, " %s", stabp->string);
	  FUNC2 (stderr, "\n");
	}
      i = (i + 1) % SAVE_STABS_COUNT;
    }
  while (i != saved_stabs_index);
}