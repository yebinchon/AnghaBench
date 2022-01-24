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
struct delay_desc {int num; int /*<<< orphan*/  def; struct delay_desc* next; } ;
struct attr_value {struct attr_value* next; } ;
struct attr_desc {struct attr_value* first_value; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 char const* delay_1_0_str ; 
 char const* delay_type_str ; 
 struct delay_desc* delays ; 
 struct attr_desc* FUNC1 (char const**,int /*<<< orphan*/ ) ; 
 struct attr_value* FUNC2 (struct attr_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct attr_desc*) ; 
 int num_delays ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  true_rtx ; 
 int /*<<< orphan*/  FUNC6 (struct attr_desc*,struct attr_value*,int,char*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (const char *kind)
{
  struct delay_desc *delay;
  int max_slots;
  char str[50];
  const char *pstr;
  struct attr_desc *attr;
  struct attr_value *av, *common_av;
  int i;

  /* Compute the maximum number of delay slots required.  We use the delay
     ordinal times this number plus one, plus the slot number as an index into
     the appropriate predicate to test.  */

  for (delay = delays, max_slots = 0; delay; delay = delay->next)
    if (FUNC0 (delay->def, 1) / 3 > max_slots)
      max_slots = FUNC0 (delay->def, 1) / 3;

  /* Write function prelude.  */

  FUNC4 ("int\n");
  FUNC4 ("eligible_for_%s (rtx delay_insn ATTRIBUTE_UNUSED, int slot, rtx candidate_insn, int flags ATTRIBUTE_UNUSED)\n",
	  kind);
  FUNC4 ("{\n");
  FUNC4 ("  rtx insn;\n");
  FUNC4 ("\n");
  FUNC4 ("  gcc_assert (slot < %d);\n", max_slots);
  FUNC4 ("\n");
  /* Allow dbr_schedule to pass labels, etc.  This can happen if try_split
     converts a compound instruction into a loop.  */
  FUNC4 ("  if (!INSN_P (candidate_insn))\n");
  FUNC4 ("    return 0;\n");
  FUNC4 ("\n");

  /* If more than one delay type, find out which type the delay insn is.  */

  if (num_delays > 1)
    {
      attr = FUNC1 (&delay_type_str, 0);
      FUNC3 (attr);
      common_av = FUNC2 (attr);

      FUNC4 ("  insn = delay_insn;\n");
      FUNC4 ("  switch (recog_memoized (insn))\n");
      FUNC4 ("    {\n");

      FUNC5 (str, " * %d;\n      break;", max_slots);
      for (av = attr->first_value; av; av = av->next)
	if (av != common_av)
	  FUNC6 (attr, av, 1, "slot +=", str, 4, true_rtx);

      FUNC6 (attr, common_av, 0, "slot +=", str, 4, true_rtx);
      FUNC4 ("    }\n\n");

      /* Ensure matched.  Otherwise, shouldn't have been called.  */
      FUNC4 ("  gcc_assert (slot >= %d);\n\n", max_slots);
    }

  /* If just one type of delay slot, write simple switch.  */
  if (num_delays == 1 && max_slots == 1)
    {
      FUNC4 ("  insn = candidate_insn;\n");
      FUNC4 ("  switch (recog_memoized (insn))\n");
      FUNC4 ("    {\n");

      attr = FUNC1 (&delay_1_0_str, 0);
      FUNC3 (attr);
      common_av = FUNC2 (attr);

      for (av = attr->first_value; av; av = av->next)
	if (av != common_av)
	  FUNC6 (attr, av, 1, "return", ";", 4, true_rtx);

      FUNC6 (attr, common_av, 0, "return", ";", 4, true_rtx);
      FUNC4 ("    }\n");
    }

  else
    {
      /* Write a nested CASE.  The first indicates which condition we need to
	 test, and the inner CASE tests the condition.  */
      FUNC4 ("  insn = candidate_insn;\n");
      FUNC4 ("  switch (slot)\n");
      FUNC4 ("    {\n");

      for (delay = delays; delay; delay = delay->next)
	for (i = 0; i < FUNC0 (delay->def, 1); i += 3)
	  {
	    FUNC4 ("    case %d:\n",
		    (i / 3) + (num_delays == 1 ? 0 : delay->num * max_slots));
	    FUNC4 ("      switch (recog_memoized (insn))\n");
	    FUNC4 ("\t{\n");

	    FUNC5 (str, "*%s_%d_%d", kind, delay->num, i / 3);
	    pstr = str;
	    attr = FUNC1 (&pstr, 0);
	    FUNC3 (attr);
	    common_av = FUNC2 (attr);

	    for (av = attr->first_value; av; av = av->next)
	      if (av != common_av)
		FUNC6 (attr, av, 1, "return", ";", 8, true_rtx);

	    FUNC6 (attr, common_av, 0, "return", ";", 8, true_rtx);
	    FUNC4 ("      }\n");
	  }

      FUNC4 ("    default:\n");
      FUNC4 ("      gcc_unreachable ();\n");
      FUNC4 ("    }\n");
    }

  FUNC4 ("}\n\n");
}