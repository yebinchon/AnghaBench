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
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int max_id_len ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  obstack ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8 (rtx insn)
{
  const char *name = FUNC1 (insn, 0);
  const char *p;
  int len;
  int truth = FUNC3 (FUNC1 (insn, 2));

  /* Don't mention instructions whose names are the null string
     or begin with '*'.  They are in the machine description just
     to be recognized.  */
  if (name[0] == 0 || name[0] == '*')
    return;

  len = FUNC7 (name);

  if (len > max_id_len)
    max_id_len = len;

  if (truth == 0)
    /* Emit nothing.  */;
  else if (truth == 1)
    FUNC5 ("#define HAVE_%s 1\n", name);
  else
    {
      /* Write the macro definition, putting \'s at the end of each line,
	 if more than one.  */
      FUNC5 ("#define HAVE_%s (", name);
      for (p = FUNC1 (insn, 2); *p; p++)
	{
	  if (FUNC0 (*p))
	    FUNC2 (" \\\n", stdout);
	  else
	    FUNC6 (*p);
	}
      FUNC2 (")\n", stdout);
    }

  FUNC4 (&obstack, &insn, sizeof (rtx));
}