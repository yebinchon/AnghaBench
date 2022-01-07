
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DImode ;


 int GET_CODE (scalar_t__) ;
 int GET_MODE (int ) ;

 int INSN_ADDRESSES (int ) ;
 scalar_t__ INSN_ADDRESSES_SET_P () ;
 int INSN_UID (scalar_t__) ;
 int INTVAL (int ) ;



 int NULL_RTX ;
 int REG_BR_PROB ;
 int REG_BR_PROB_BASE ;
 int XEXP (scalar_t__,int ) ;
 int final_sequence ;
 scalar_t__ find_reg_note (scalar_t__,int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_attr_length (scalar_t__) ;
 int reverse_condition (int) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

const char *
output_v9branch (rtx op, rtx dest, int reg, int label, int reversed,
   int annul, rtx insn)
{
  static char string[64];
  enum rtx_code code = GET_CODE (op);
  enum machine_mode mode = GET_MODE (XEXP (op, 0));
  rtx note;
  int far;
  char *p;
  far = get_attr_length (insn) >= 3;


  if (reversed ^ far)
    code = reverse_condition (code);


  gcc_assert (mode == DImode);



  switch (code)
    {
    case 128:
      strcpy (string, "brnz");
      break;

    case 133:
      strcpy (string, "brz");
      break;

    case 132:
      strcpy (string, "brgez");
      break;

    case 129:
      strcpy (string, "brlz");
      break;

    case 130:
      strcpy (string, "brlez");
      break;

    case 131:
      strcpy (string, "brgz");
      break;

    default:
      gcc_unreachable ();
    }

  p = strchr (string, '\0');


  if (annul && ! far)
    {
      strcpy (p, ",a");
      p += 2;
    }

  if (insn && (note = find_reg_note (insn, REG_BR_PROB, NULL_RTX)))
    {
      strcpy (p,
       ((INTVAL (XEXP (note, 0)) >= REG_BR_PROB_BASE / 2) ^ far)
       ? ",pt" : ",pn");
      p += 3;
    }

  *p = p < string + 8 ? '\t' : ' ';
  p++;
  *p++ = '%';
  *p++ = '0' + reg;
  *p++ = ',';
  *p++ = ' ';
  if (far)
    {
      int veryfar = 1, delta;

      if (INSN_ADDRESSES_SET_P ())
 {
   delta = (INSN_ADDRESSES (INSN_UID (dest))
     - INSN_ADDRESSES (INSN_UID (insn)));

   if (delta >= -260000 && delta < 260000)
     veryfar = 0;
 }

      strcpy (p, ".+12\n\t nop\n\t");


      if (annul || ! final_sequence)
        p[3] = '6';
      p += 12;
      if (veryfar)
 {
   strcpy (p, "b\t");
   p += 2;
 }
      else
 {
   strcpy (p, "ba,pt\t%%xcc, ");
   p += 13;
 }
    }
  *p++ = '%';
  *p++ = 'l';
  *p++ = '0' + label;
  *p++ = '%';
  *p++ = '#';
  *p = '\0';

  return string;
}
