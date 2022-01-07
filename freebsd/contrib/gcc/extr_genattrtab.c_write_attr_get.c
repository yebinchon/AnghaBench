
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct attr_value {int num_insns; struct attr_value* next; int value; TYPE_2__* first_insn; } ;
struct attr_desc {char* name; scalar_t__ is_const; struct attr_value* first_value; int is_numeric; } ;
struct TYPE_4__ {TYPE_1__* def; } ;
struct TYPE_3__ {int insn_code; int insn_index; } ;


 struct attr_value* find_most_used (struct attr_desc*) ;
 int printf (char*,...) ;
 int true_rtx ;
 int write_attr_case (struct attr_desc*,struct attr_value*,int,char*,char*,int,int ) ;
 int write_attr_set (struct attr_desc*,int,int ,char*,char*,int ,int,int ) ;

__attribute__((used)) static void
write_attr_get (struct attr_desc *attr)
{
  struct attr_value *av, *common_av;



  common_av = find_most_used (attr);



  if (!attr->is_numeric)
    printf ("enum attr_%s\n", attr->name);
  else
    printf ("int\n");



  if (attr->name[0] == '*')
    printf ("%s (rtx insn ATTRIBUTE_UNUSED)\n", &attr->name[1]);
  else if (attr->is_const == 0)
    printf ("get_attr_%s (rtx insn ATTRIBUTE_UNUSED)\n", attr->name);
  else
    {
      printf ("get_attr_%s (void)\n", attr->name);
      printf ("{\n");

      for (av = attr->first_value; av; av = av->next)
 if (av->num_insns == 1)
   write_attr_set (attr, 2, av->value, "return", ";",
     true_rtx, av->first_insn->def->insn_code,
     av->first_insn->def->insn_index);
 else if (av->num_insns != 0)
   write_attr_set (attr, 2, av->value, "return", ";",
     true_rtx, -2, 0);

      printf ("}\n\n");
      return;
    }

  printf ("{\n");
  printf ("  switch (recog_memoized (insn))\n");
  printf ("    {\n");

  for (av = attr->first_value; av; av = av->next)
    if (av != common_av)
      write_attr_case (attr, av, 1, "return", ";", 4, true_rtx);

  write_attr_case (attr, common_av, 0, "return", ";", 4, true_rtx);
  printf ("    }\n}\n\n");
}
