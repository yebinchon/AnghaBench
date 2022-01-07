
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int AND ;
 int ATTR_IND_SIMPLIFIED_P (int ) ;


 int DEF_ATTR_STRING (char*) ;
 int EQ ;
 int EQ_ATTR ;
 int GET_CODE (int ) ;
 int IOR ;
 int const NOT ;

 char TOUPPER (char) ;
 int XEXP (int ,int) ;
 char* XSTR (int ,int) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 scalar_t__ address_used ;
 int attr_rtx (int const,int ,...) ;
 int copy_rtx_unchanging (int ) ;
 int false_rtx ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int insert_right_side (int ,int ,int ,int,int) ;
 int simplify_test_exp_in_temp (int ,int,int) ;
 int strcat (char*,char*) ;
 int strcmp_check (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int true_rtx ;
 int walk_attr_value (int ) ;

__attribute__((used)) static rtx
evaluate_eq_attr (rtx exp, rtx value, int insn_code, int insn_index)
{
  rtx orexp, andexp;
  rtx right;
  rtx newexp;
  int i;

  switch (GET_CODE (value))
    {
    case 129:
      if (! strcmp_check (XSTR (value, 0), XSTR (exp, 1)))
 newexp = true_rtx;
      else
 newexp = false_rtx;
      break;

    case 128:
      {
 char *p;
 char string[256];

 gcc_assert (GET_CODE (exp) == EQ_ATTR);
 gcc_assert (strlen (XSTR (exp, 0)) + strlen (XSTR (exp, 1)) + 2
      <= 256);

 strcpy (string, XSTR (exp, 0));
 strcat (string, "_");
 strcat (string, XSTR (exp, 1));
 for (p = string; *p; p++)
   *p = TOUPPER (*p);

 newexp = attr_rtx (EQ, value,
      attr_rtx (128,
         DEF_ATTR_STRING (string)));
 break;
      }

    case 130:
      orexp = false_rtx;
      andexp = true_rtx;

      for (i = 0; i < XVECLEN (value, 0); i += 2)
 {
   rtx this = simplify_test_exp_in_temp (XVECEXP (value, 0, i),
      insn_code, insn_index);

   right = insert_right_side (AND, andexp, this,
         insn_code, insn_index);
   right = insert_right_side (AND, right,
         evaluate_eq_attr (exp,
             XVECEXP (value, 0,
        i + 1),
             insn_code, insn_index),
         insn_code, insn_index);
   orexp = insert_right_side (IOR, orexp, right,
         insn_code, insn_index);


   newexp = attr_rtx (NOT, this);
   andexp = insert_right_side (AND, andexp, newexp,
          insn_code, insn_index);
 }


      right = insert_right_side (AND, andexp,
     evaluate_eq_attr (exp, XEXP (value, 1),
         insn_code, insn_index),
     insn_code, insn_index);
      newexp = insert_right_side (IOR, orexp, right, insn_code, insn_index);
      break;

    default:
      gcc_unreachable ();
    }




  address_used = 0;
  walk_attr_value (newexp);

  if (address_used)
    {
      if (! ATTR_IND_SIMPLIFIED_P (exp))
 return copy_rtx_unchanging (exp);
      return exp;
    }
  else
    return newexp;
}
