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
struct clobber_pat {int first_clobber; int /*<<< orphan*/  pattern; struct clobber_ent* insns; struct clobber_pat* next; } ;
struct clobber_ent {int code_number; struct clobber_ent* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct clobber_pat* clobber_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  struct clobber_pat *clobber;
  struct clobber_ent *ent;
  int i;

  FUNC4 ("\n\nvoid\nadd_clobbers (rtx pattern ATTRIBUTE_UNUSED, int insn_code_number)\n");
  FUNC4 ("{\n");
  FUNC4 ("  switch (insn_code_number)\n");
  FUNC4 ("    {\n");

  for (clobber = clobber_list; clobber; clobber = clobber->next)
    {
      for (ent = clobber->insns; ent; ent = ent->next)
	FUNC4 ("    case %d:\n", ent->code_number);

      for (i = clobber->first_clobber; i < FUNC2 (clobber->pattern, 1); i++)
	{
	  FUNC4 ("      XVECEXP (pattern, 0, %d) = ", i);
	  FUNC3 (FUNC1 (clobber->pattern, 1, i),
		   FUNC0 (clobber->pattern), NULL);
	  FUNC4 (";\n");
	}

      FUNC4 ("      break;\n\n");
    }

  FUNC4 ("    default:\n");
  FUNC4 ("      gcc_unreachable ();\n");
  FUNC4 ("    }\n");
  FUNC4 ("}\n");
}