#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct web_entry {int /*<<< orphan*/ * reg; } ;
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {scalar_t__ relevancy; int /*<<< orphan*/  source_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC3 (struct web_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int SIGN_EXTEND ; 
 scalar_t__ SIGN_EXTENDED_DEF ; 
 int /*<<< orphan*/  USE_EXTENSION ; 
 int ZERO_EXTEND ; 
 scalar_t__ ZERO_EXTENDED_DEF ; 
 int /*<<< orphan*/  df ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct web_entry* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * use_entry ; 
 unsigned int uses_num ; 

__attribute__((used)) static int
FUNC10 (void)
{
  rtx insn = NULL;
  rtx reg = NULL;
  struct web_entry *root_entry = NULL;
  rtx se_insn = NULL;
  unsigned int i;
  int num_relevant_uses = 0;
  enum rtx_code extension_code;

  for (i = 0; i < uses_num; i++)
    {
      insn = FUNC0 (FUNC2 (df, i));
      reg = FUNC1 (FUNC2 (df, i));

      if (!insn)
	continue;

      if (!FUNC4 (insn))
	continue;

      root_entry = FUNC9 (&use_entry[i]);

      if (FUNC3 (root_entry)->relevancy != SIGN_EXTENDED_DEF
	  && FUNC3 (root_entry)->relevancy != ZERO_EXTENDED_DEF)
	/* The current web is not relevant.  Continue to the next use.  */
	continue;

      if (root_entry->reg)
	/* It isn't possible to have two different register for the same
	   web.  */
	FUNC5 (FUNC6 (root_entry->reg, reg));
      else
	root_entry->reg = reg;

      /* Generate the use extension.  */
      if (FUNC3 (root_entry)->relevancy == SIGN_EXTENDED_DEF)
	extension_code = SIGN_EXTEND;
      else
	extension_code = ZERO_EXTEND;

      se_insn =
	FUNC7 (reg, extension_code,
				      FUNC3 (root_entry)->source_mode);
      if (!se_insn)
	/* This is very bad, abort the transformation.  */
	return -1;

      num_relevant_uses++;

      if (!FUNC8 (insn, se_insn,
      					      USE_EXTENSION))
	/* Something bad happened.  Abort the optimization.  */
	return -1;
    }

  return num_relevant_uses;
}