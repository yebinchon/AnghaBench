
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CALL ;
 int DEFINE_EXPAND ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ LABEL_P (int ) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ MATCH_DUP ;
 scalar_t__ MATCH_OPERAND ;
 scalar_t__ MATCH_OPERATOR ;
 scalar_t__ MATCH_OP_DUP ;
 scalar_t__ MATCH_PARALLEL ;
 scalar_t__ MATCH_PAR_DUP ;
 int MAX (int,int) ;
 scalar_t__ PARALLEL ;
 scalar_t__ PC ;
 scalar_t__ RETURN ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 char* XSTR (int ,int) ;
 scalar_t__ XVEC (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int fatal (char*,...) ;
 int gen_exp (int ,int ,int *) ;
 int max_dup_opno ;
 int max_operand_vec (int ,int) ;
 int max_scratch_opno ;
 int print_rtx_ptr_loc (char*) ;
 int printf (char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
gen_expand (rtx expand)
{
  int operands;
  int i;

  if (strlen (XSTR (expand, 0)) == 0)
    fatal ("define_expand lacks a name");
  if (XVEC (expand, 1) == 0)
    fatal ("define_expand for %s lacks a pattern", XSTR (expand, 0));


  operands = max_operand_vec (expand, 1);


  printf ("rtx\ngen_%s (", XSTR (expand, 0));
  if (operands)
    for (i = 0; i < operands; i++)
      if (i)
 printf (",\n\trtx operand%d", i);
      else
 printf ("rtx operand%d", i);
  else
    printf ("void");
  printf (")\n");
  printf ("{\n");




  if ((XSTR (expand, 3) == 0 || *XSTR (expand, 3) == '\0')
      && operands > max_dup_opno
      && XVECLEN (expand, 1) == 1)
    {
      printf ("  return ");
      gen_exp (XVECEXP (expand, 1, 0), DEFINE_EXPAND, ((void*)0));
      printf (";\n}\n\n");
      return;
    }



  for (i = operands; i <= max_dup_opno; i++)
    printf ("  rtx operand%d;\n", i);
  for (; i <= max_scratch_opno; i++)
    printf ("  rtx operand%d ATTRIBUTE_UNUSED;\n", i);
  printf ("  rtx _val = 0;\n");
  printf ("  start_sequence ();\n");







  if (XSTR (expand, 3) && *XSTR (expand, 3))
    {
      printf ("  {\n");
      if (operands > 0 || max_dup_opno >= 0 || max_scratch_opno >= 0)
 printf ("    rtx operands[%d];\n",
     MAX (operands, MAX (max_scratch_opno, max_dup_opno) + 1));

      for (i = 0; i < operands; i++)
 printf ("    operands[%d] = operand%d;\n", i, i);



      print_rtx_ptr_loc (XSTR (expand, 3));
      printf ("%s\n", XSTR (expand, 3));



      if (XVEC (expand, 1) != 0)
 {
   for (i = 0; i < operands; i++)
     printf ("    operand%d = operands[%d];\n", i, i);
   for (; i <= max_dup_opno; i++)
     printf ("    operand%d = operands[%d];\n", i, i);
   for (; i <= max_scratch_opno; i++)
     printf ("    operand%d = operands[%d];\n", i, i);
 }
      printf ("  }\n");
    }





  for (i = 0; i < XVECLEN (expand, 1); i++)
    {
      rtx next = XVECEXP (expand, 1, i);
      if ((GET_CODE (next) == SET && GET_CODE (SET_DEST (next)) == PC)
   || (GET_CODE (next) == PARALLEL
       && ((GET_CODE (XVECEXP (next, 0, 0)) == SET
     && GET_CODE (SET_DEST (XVECEXP (next, 0, 0))) == PC)
    || GET_CODE (XVECEXP (next, 0, 0)) == RETURN))
   || GET_CODE (next) == RETURN)
 printf ("  emit_jump_insn (");
      else if ((GET_CODE (next) == SET && GET_CODE (SET_SRC (next)) == CALL)
        || GET_CODE (next) == CALL
        || (GET_CODE (next) == PARALLEL
     && GET_CODE (XVECEXP (next, 0, 0)) == SET
     && GET_CODE (SET_SRC (XVECEXP (next, 0, 0))) == CALL)
        || (GET_CODE (next) == PARALLEL
     && GET_CODE (XVECEXP (next, 0, 0)) == CALL))
 printf ("  emit_call_insn (");
      else if (LABEL_P (next))
 printf ("  emit_label (");
      else if (GET_CODE (next) == MATCH_OPERAND
        || GET_CODE (next) == MATCH_DUP
        || GET_CODE (next) == MATCH_OPERATOR
        || GET_CODE (next) == MATCH_OP_DUP
        || GET_CODE (next) == MATCH_PARALLEL
        || GET_CODE (next) == MATCH_PAR_DUP
        || GET_CODE (next) == PARALLEL)
 printf ("  emit (");
      else
 printf ("  emit_insn (");
      gen_exp (next, DEFINE_EXPAND, ((void*)0));
      printf (");\n");
      if (GET_CODE (next) == SET && GET_CODE (SET_DEST (next)) == PC
   && GET_CODE (SET_SRC (next)) == LABEL_REF)
 printf ("  emit_barrier ();");
    }




  printf ("  _val = get_insns ();\n");
  printf ("  end_sequence ();\n");
  printf ("  return _val;\n}\n\n");
}
