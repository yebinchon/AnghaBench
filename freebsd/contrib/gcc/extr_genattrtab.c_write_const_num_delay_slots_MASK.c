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
struct attr_value {int /*<<< orphan*/  first_insn; int /*<<< orphan*/  value; struct attr_value* next; } ;
struct attr_desc {struct attr_value* first_value; } ;

/* Variables and functions */
 struct attr_desc* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ length_used ; 
 int /*<<< orphan*/  num_delay_slots_str ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  struct attr_desc *attr = FUNC0 (&num_delay_slots_str, 0);
  struct attr_value *av;

  if (attr)
    {
      FUNC1 ("int\nconst_num_delay_slots (rtx insn)\n");
      FUNC1 ("{\n");
      FUNC1 ("  switch (recog_memoized (insn))\n");
      FUNC1 ("    {\n");

      for (av = attr->first_value; av; av = av->next)
	{
	  length_used = 0;
	  FUNC2 (av->value);
	  if (length_used)
	    FUNC3 (av->first_insn, 4);
	}

      FUNC1 ("    default:\n");
      FUNC1 ("      return 1;\n");
      FUNC1 ("    }\n}\n\n");
    }
}