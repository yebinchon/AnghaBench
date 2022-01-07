
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCFPmode ;
 int CR0_REGNO ;


 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;



 int INTVAL (scalar_t__) ;






 scalar_t__ NULL_RTX ;

 int REGNO (scalar_t__) ;
 int REG_BR_PROB ;
 int REG_BR_PROB_BASE ;
 scalar_t__ TARGET_E500 ;
 int TARGET_FPRS ;
 scalar_t__ TARGET_HARD_FLOAT ;






 scalar_t__ XEXP (scalar_t__,int ) ;
 int abs (int) ;
 scalar_t__ br_prob_note_reliable_p (scalar_t__) ;
 scalar_t__ find_reg_note (scalar_t__,int ,scalar_t__) ;
 int gcc_unreachable () ;
 int get_attr_length (scalar_t__) ;
 char** reg_names ;
 int reverse_condition (int) ;
 int reverse_condition_maybe_unordered (int) ;
 scalar_t__ rs6000_always_hint ;
 int sprintf (char*,char*,char const*,...) ;
 int validate_condition_mode (int,int) ;

char *
output_cbranch (rtx op, const char *label, int reversed, rtx insn)
{
  static char string[64];
  enum rtx_code code = GET_CODE (op);
  rtx cc_reg = XEXP (op, 0);
  enum machine_mode mode = GET_MODE (cc_reg);
  int cc_regno = REGNO (cc_reg) - CR0_REGNO;
  int need_longbranch = label != ((void*)0) && get_attr_length (insn) == 8;
  int really_reversed = reversed ^ need_longbranch;
  char *s = string;
  const char *ccode;
  const char *pred;
  rtx note;

  validate_condition_mode (code, mode);




  if (really_reversed)
    {


      if (mode == CCFPmode)
 code = reverse_condition_maybe_unordered (code);
      else
 code = reverse_condition (code);
    }

  if ((TARGET_E500 && !TARGET_FPRS && TARGET_HARD_FLOAT) && mode == CCFPmode)
    {


      switch (code)
 {
 case 145:

   code = 142;
   break;

 case 135:
   code = 130;
   break;

 default:
   gcc_unreachable ();
 }
    }

  switch (code)
    {


    case 135: case 137:
      ccode = "ne"; break;
    case 145: case 133:
      ccode = "eq"; break;
    case 144: case 143:
      ccode = "ge"; break;
    case 142: case 141: case 131:
      ccode = "gt"; break;
    case 140: case 139:
      ccode = "le"; break;
    case 138: case 136: case 129:
      ccode = "lt"; break;
    case 128: ccode = "un"; break;
    case 134: ccode = "nu"; break;
    case 132: ccode = "nl"; break;
    case 130: ccode = "ng"; break;
    default:
      gcc_unreachable ();
    }



  pred = "";
  note = find_reg_note (insn, REG_BR_PROB, NULL_RTX);
  if (note != NULL_RTX)
    {

      int prob = INTVAL (XEXP (note, 0)) - REG_BR_PROB_BASE / 2;







      if (rs6000_always_hint
   || (abs (prob) > REG_BR_PROB_BASE / 100 * 48
       && br_prob_note_reliable_p (note)))
 {
   if (abs (prob) > REG_BR_PROB_BASE / 20
       && ((prob > 0) ^ need_longbranch))
     pred = "+";
   else
     pred = "-";
 }
    }

  if (label == ((void*)0))
    s += sprintf (s, "{b%sr|b%slr%s} ", ccode, ccode, pred);
  else
    s += sprintf (s, "{b%s|b%s%s} ", ccode, ccode, pred);



  if (reg_names[cc_regno + CR0_REGNO][0] == '%')
    *s++ = '%';
  s += sprintf (s, "%s", reg_names[cc_regno + CR0_REGNO]);

  if (label != ((void*)0))
    {


      if (need_longbranch)
 s += sprintf (s, ",$+8\n\tb %s", label);
      else
 s += sprintf (s, ",%s", label);
    }

  return string;
}
