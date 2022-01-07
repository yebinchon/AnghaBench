
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_desc {int dummy; } ;
typedef scalar_t__ rtx ;


 int AND ;
 scalar_t__ COND ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int NOT ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 scalar_t__ attr_rtx (int ,scalar_t__) ;
 scalar_t__ eliminate_known_true (scalar_t__,scalar_t__,int,int) ;
 scalar_t__ false_rtx ;
 scalar_t__ insert_right_side (int ,scalar_t__,scalar_t__,int,int) ;
 int printf (char*,...) ;
 scalar_t__ true_rtx ;
 int write_attr_value (struct attr_desc*,scalar_t__) ;
 int write_indent (int) ;
 int write_test_expr (scalar_t__,int ) ;

__attribute__((used)) static void
write_attr_set (struct attr_desc *attr, int indent, rtx value,
  const char *prefix, const char *suffix, rtx known_true,
  int insn_code, int insn_index)
{
  if (GET_CODE (value) == COND)
    {


      rtx default_val = XEXP (value, 1);
      rtx our_known_true = known_true;
      rtx newexp;
      int first_if = 1;
      int i;

      for (i = 0; i < XVECLEN (value, 0); i += 2)
 {
   rtx testexp;
   rtx inner_true;

   testexp = eliminate_known_true (our_known_true,
       XVECEXP (value, 0, i),
       insn_code, insn_index);
   newexp = attr_rtx (NOT, testexp);
   newexp = insert_right_side (AND, our_known_true, newexp,
          insn_code, insn_index);




   if (testexp == true_rtx || newexp == false_rtx)
     {
       default_val = XVECEXP (value, 0, i + 1);
       break;
     }



   inner_true = insert_right_side (AND, our_known_true,
       testexp, insn_code, insn_index);


   if (inner_true == false_rtx)
     continue;

   write_indent (indent);
   printf ("%sif ", first_if ? "" : "else ");
   first_if = 0;
   write_test_expr (testexp, 0);
   printf ("\n");
   write_indent (indent + 2);
   printf ("{\n");

   write_attr_set (attr, indent + 4,
     XVECEXP (value, 0, i + 1), prefix, suffix,
     inner_true, insn_code, insn_index);
   write_indent (indent + 2);
   printf ("}\n");
   our_known_true = newexp;
 }

      if (! first_if)
 {
   write_indent (indent);
   printf ("else\n");
   write_indent (indent + 2);
   printf ("{\n");
 }

      write_attr_set (attr, first_if ? indent : indent + 4, default_val,
        prefix, suffix, our_known_true, insn_code, insn_index);

      if (! first_if)
 {
   write_indent (indent + 2);
   printf ("}\n");
 }
    }
  else
    {
      write_indent (indent);
      printf ("%s ", prefix);
      write_attr_value (attr, value);
      printf ("%s\n", suffix);
    }
}
