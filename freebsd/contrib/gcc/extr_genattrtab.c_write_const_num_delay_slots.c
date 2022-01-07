
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_value {int first_insn; int value; struct attr_value* next; } ;
struct attr_desc {struct attr_value* first_value; } ;


 struct attr_desc* find_attr (int *,int ) ;
 scalar_t__ length_used ;
 int num_delay_slots_str ;
 int printf (char*) ;
 int walk_attr_value (int ) ;
 int write_insn_cases (int ,int) ;

__attribute__((used)) static void
write_const_num_delay_slots (void)
{
  struct attr_desc *attr = find_attr (&num_delay_slots_str, 0);
  struct attr_value *av;

  if (attr)
    {
      printf ("int\nconst_num_delay_slots (rtx insn)\n");
      printf ("{\n");
      printf ("  switch (recog_memoized (insn))\n");
      printf ("    {\n");

      for (av = attr->first_value; av; av = av->next)
 {
   length_used = 0;
   walk_attr_value (av->value);
   if (length_used)
     write_insn_cases (av->first_insn, 4);
 }

      printf ("    default:\n");
      printf ("      return 1;\n");
      printf ("    }\n}\n\n");
    }
}
