#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct attr_value {int num_insns; struct attr_value* next; int /*<<< orphan*/  value; TYPE_2__* first_insn; } ;
struct attr_desc {char* name; scalar_t__ is_const; struct attr_value* first_value; int /*<<< orphan*/  is_numeric; } ;
struct TYPE_4__ {TYPE_1__* def; } ;
struct TYPE_3__ {int insn_code; int /*<<< orphan*/  insn_index; } ;

/* Variables and functions */
 struct attr_value* FUNC0 (struct attr_desc*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  true_rtx ; 
 int /*<<< orphan*/  FUNC2 (struct attr_desc*,struct attr_value*,int,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct attr_desc*,int,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct attr_desc *attr)
{
  struct attr_value *av, *common_av;

  /* Find the most used attribute value.  Handle that as the `default' of the
     switch we will generate.  */
  common_av = FUNC0 (attr);

  /* Write out start of function, then all values with explicit `case' lines,
     then a `default', then the value with the most uses.  */
  if (!attr->is_numeric)
    FUNC1 ("enum attr_%s\n", attr->name);
  else
    FUNC1 ("int\n");

  /* If the attribute name starts with a star, the remainder is the name of
     the subroutine to use, instead of `get_attr_...'.  */
  if (attr->name[0] == '*')
    FUNC1 ("%s (rtx insn ATTRIBUTE_UNUSED)\n", &attr->name[1]);
  else if (attr->is_const == 0)
    FUNC1 ("get_attr_%s (rtx insn ATTRIBUTE_UNUSED)\n", attr->name);
  else
    {
      FUNC1 ("get_attr_%s (void)\n", attr->name);
      FUNC1 ("{\n");

      for (av = attr->first_value; av; av = av->next)
	if (av->num_insns == 1)
	  FUNC3 (attr, 2, av->value, "return", ";",
			  true_rtx, av->first_insn->def->insn_code,
			  av->first_insn->def->insn_index);
	else if (av->num_insns != 0)
	  FUNC3 (attr, 2, av->value, "return", ";",
			  true_rtx, -2, 0);

      FUNC1 ("}\n\n");
      return;
    }

  FUNC1 ("{\n");
  FUNC1 ("  switch (recog_memoized (insn))\n");
  FUNC1 ("    {\n");

  for (av = attr->first_value; av; av = av->next)
    if (av != common_av)
      FUNC2 (attr, av, 1, "return", ";", 4, true_rtx);

  FUNC2 (attr, common_av, 0, "return", ";", 4, true_rtx);
  FUNC1 ("    }\n}\n\n");
}