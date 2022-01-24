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
struct attr_desc {int dummy; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  AND ; 
 scalar_t__ COND ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NOT ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ false_rtx ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ true_rtx ; 
 int /*<<< orphan*/  FUNC8 (struct attr_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (struct attr_desc *attr, int indent, rtx value,
		const char *prefix, const char *suffix, rtx known_true,
		int insn_code, int insn_index)
{
  if (FUNC0 (value) == COND)
    {
      /* Assume the default value will be the default of the COND unless we
	 find an always true expression.  */
      rtx default_val = FUNC1 (value, 1);
      rtx our_known_true = known_true;
      rtx newexp;
      int first_if = 1;
      int i;

      for (i = 0; i < FUNC3 (value, 0); i += 2)
	{
	  rtx testexp;
	  rtx inner_true;

	  testexp = FUNC5 (our_known_true,
					  FUNC2 (value, 0, i),
					  insn_code, insn_index);
	  newexp = FUNC4 (NOT, testexp);
	  newexp = FUNC6 (AND, our_known_true, newexp,
				      insn_code, insn_index);

	  /* If the test expression is always true or if the next `known_true'
	     expression is always false, this is the last case, so break
	     out and let this value be the `else' case.  */
	  if (testexp == true_rtx || newexp == false_rtx)
	    {
	      default_val = FUNC2 (value, 0, i + 1);
	      break;
	    }

	  /* Compute the expression to pass to our recursive call as being
	     known true.  */
	  inner_true = FUNC6 (AND, our_known_true,
					  testexp, insn_code, insn_index);

	  /* If this is always false, skip it.  */
	  if (inner_true == false_rtx)
	    continue;

	  FUNC9 (indent);
	  FUNC7 ("%sif ", first_if ? "" : "else ");
	  first_if = 0;
	  FUNC10 (testexp, 0);
	  FUNC7 ("\n");
	  FUNC9 (indent + 2);
	  FUNC7 ("{\n");

	  FUNC11 (attr, indent + 4,
			  FUNC2 (value, 0, i + 1), prefix, suffix,
			  inner_true, insn_code, insn_index);
	  FUNC9 (indent + 2);
	  FUNC7 ("}\n");
	  our_known_true = newexp;
	}

      if (! first_if)
	{
	  FUNC9 (indent);
	  FUNC7 ("else\n");
	  FUNC9 (indent + 2);
	  FUNC7 ("{\n");
	}

      FUNC11 (attr, first_if ? indent : indent + 4, default_val,
		      prefix, suffix, our_known_true, insn_code, insn_index);

      if (! first_if)
	{
	  FUNC9 (indent + 2);
	  FUNC7 ("}\n");
	}
    }
  else
    {
      FUNC9 (indent);
      FUNC7 ("%s ", prefix);
      FUNC8 (attr, value);
      FUNC7 ("%s\n", suffix);
    }
}