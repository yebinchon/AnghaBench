
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCFPEmode ;
 int CCFPmode ;
 int CCX_NOOVmode ;
 int CCXmode ;
 int CC_NOOVmode ;


 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;



 int INSN_ADDRESSES (int ) ;
 scalar_t__ INSN_ADDRESSES_SET_P () ;
 int INSN_UID (scalar_t__) ;
 int INTVAL (scalar_t__) ;






 int NULL_RTX ;

 scalar_t__ REGNO (scalar_t__) ;
 int REG_BR_PROB ;
 int REG_BR_PROB_BASE ;
 scalar_t__ SPARC_FCC_REG ;
 scalar_t__ SPARC_FIRST_V9_FCC_REG ;
 scalar_t__ TARGET_V9 ;






 scalar_t__ XEXP (scalar_t__,int ) ;
 int final_sequence ;
 scalar_t__ find_reg_note (scalar_t__,int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_attr_length (scalar_t__) ;
 int reverse_condition (int) ;
 int reverse_condition_maybe_unordered (int) ;
 int strcat (char*,char const*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

const char *
output_cbranch (rtx op, rtx dest, int label, int reversed, int annul,
  rtx insn)
{
  static char string[64];
  enum rtx_code code = GET_CODE (op);
  rtx cc_reg = XEXP (op, 0);
  enum machine_mode mode = GET_MODE (cc_reg);
  const char *labelno, *branch;
  int spaces = 8, far;
  char *p;
  far = TARGET_V9 && (get_attr_length (insn) >= 3);
  if (reversed ^ far)
    {


      if (mode == CCFPmode || mode == CCFPEmode)
 code = reverse_condition_maybe_unordered (code);
      else
 code = reverse_condition (code);
    }


  if (mode == CCFPmode || mode == CCFPEmode)
    {
      switch (code)
 {
 case 135:
   branch = "fbne";
   break;
 case 145:
   branch = "fbe";
   break;
 case 144:
   branch = "fbge";
   break;
 case 142:
   branch = "fbg";
   break;
 case 140:
   branch = "fble";
   break;
 case 138:
   branch = "fbl";
   break;
 case 128:
   branch = "fbu";
   break;
 case 134:
   branch = "fbo";
   break;
 case 131:
   branch = "fbug";
   break;
 case 129:
   branch = "fbul";
   break;
 case 133:
   branch = "fbue";
   break;
 case 132:
   branch = "fbuge";
   break;
 case 130:
   branch = "fbule";
   break;
 case 137:
   branch = "fblg";
   break;

 default:
   gcc_unreachable ();
 }






      string[0] = '\0';
      if (! TARGET_V9)
 strcpy (string, "nop\n\t");
      strcat (string, branch);
    }
  else
    {
      switch (code)
 {
 case 135:
   branch = "bne";
   break;
 case 145:
   branch = "be";
   break;
 case 144:
   if (mode == CC_NOOVmode || mode == CCX_NOOVmode)
     branch = "bpos";
   else
     branch = "bge";
   break;
 case 142:
   branch = "bg";
   break;
 case 140:
   branch = "ble";
   break;
 case 138:
   if (mode == CC_NOOVmode || mode == CCX_NOOVmode)
     branch = "bneg";
   else
     branch = "bl";
   break;
 case 143:
   branch = "bgeu";
   break;
 case 141:
   branch = "bgu";
   break;
 case 139:
   branch = "bleu";
   break;
 case 136:
   branch = "blu";
   break;

 default:
   gcc_unreachable ();
 }
      strcpy (string, branch);
    }
  spaces -= strlen (branch);
  p = strchr (string, '\0');


  if (annul && ! far)
    {
      strcpy (p, ",a");
      p += 2;
      spaces -= 2;
    }

  if (TARGET_V9)
    {
      rtx note;
      int v8 = 0;

      if (! far && insn && INSN_ADDRESSES_SET_P ())
 {
   int delta = (INSN_ADDRESSES (INSN_UID (dest))
         - INSN_ADDRESSES (INSN_UID (insn)));

   if (delta < -260000 || delta >= 260000)
     v8 = 1;
 }

      if (mode == CCFPmode || mode == CCFPEmode)
 {
   static char v9_fcc_labelno[] = "%%fccX, ";

   v9_fcc_labelno[5] = REGNO (cc_reg) - SPARC_FIRST_V9_FCC_REG + '0';
   labelno = v9_fcc_labelno;
   if (v8)
     {
       gcc_assert (REGNO (cc_reg) == SPARC_FCC_REG);
       labelno = "";
     }
 }
      else if (mode == CCXmode || mode == CCX_NOOVmode)
 {
   labelno = "%%xcc, ";
   gcc_assert (! v8);
 }
      else
 {
   labelno = "%%icc, ";
   if (v8)
     labelno = "";
 }

      if (*labelno && insn && (note = find_reg_note (insn, REG_BR_PROB, NULL_RTX)))
 {
   strcpy (p,
    ((INTVAL (XEXP (note, 0)) >= REG_BR_PROB_BASE / 2) ^ far)
    ? ",pt" : ",pn");
   p += 3;
   spaces -= 3;
 }
    }
  else
    labelno = "";

  if (spaces > 0)
    *p++ = '\t';
  else
    *p++ = ' ';
  strcpy (p, labelno);
  p = strchr (p, '\0');
  if (far)
    {
      strcpy (p, ".+12\n\t nop\n\tb\t");


      if (annul || ! final_sequence)
        p[3] = '6';
      p += 14;
    }
  *p++ = '%';
  *p++ = 'l';
  *p++ = label + '0';
  *p++ = '%';
  *p++ = '#';
  *p = '\0';

  return string;
}
