
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct decision_head {TYPE_1__* first; } ;
typedef enum routine_type { ____Placeholder_routine_type } routine_type ;
struct TYPE_2__ {int subroutine_number; } ;


 scalar_t__ IS_SPLIT (int) ;



 int max_depth ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int write_tree (struct decision_head*,char*,int,int) ;

__attribute__((used)) static void
write_subroutine (struct decision_head *head, enum routine_type type)
{
  int subfunction = head->first ? head->first->subroutine_number : 0;
  const char *s_or_e;
  char extension[32];
  int i;

  s_or_e = subfunction ? "static " : "";

  if (subfunction)
    sprintf (extension, "_%d", subfunction);
  else if (type == 129)
    extension[0] = '\0';
  else
    strcpy (extension, "_insns");

  switch (type)
    {
    case 129:
      printf ("%sint\nrecog%s (rtx x0 ATTRIBUTE_UNUSED,\n\trtx insn ATTRIBUTE_UNUSED,\n\tint *pnum_clobbers ATTRIBUTE_UNUSED)\n", s_or_e, extension);

      break;
    case 128:
      printf ("%srtx\nsplit%s (rtx x0 ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)\n",

       s_or_e, extension);
      break;
    case 130:
      printf ("%srtx\npeephole2%s (rtx x0 ATTRIBUTE_UNUSED,\n\trtx insn ATTRIBUTE_UNUSED,\n\tint *_pmatch_len ATTRIBUTE_UNUSED)\n",

       s_or_e, extension);
      break;
    }

  printf ("{\n  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];\n");
  for (i = 1; i <= max_depth; i++)
    printf ("  rtx x%d ATTRIBUTE_UNUSED;\n", i);

  printf ("  %s tem ATTRIBUTE_UNUSED;\n", IS_SPLIT (type) ? "rtx" : "int");

  if (!subfunction)
    printf ("  recog_data.insn = NULL_RTX;\n");

  if (head->first)
    write_tree (head, "", type, 1);
  else
    printf ("  goto ret0;\n");

  printf (" ret0:\n  return %d;\n}\n\n", IS_SPLIT (type) ? 0 : -1);
}
