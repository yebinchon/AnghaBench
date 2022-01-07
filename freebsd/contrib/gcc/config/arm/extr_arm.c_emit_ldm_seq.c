
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 char* REGISTER_PREFIX ;
 int gcc_unreachable () ;
 int load_multiple_sequence (int *,int,int*,int*,scalar_t__*) ;
 int output_asm_insn (char*,int *) ;
 char** reg_names ;
 int sprintf (char*,char*,char*,char*,...) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

const char *
emit_ldm_seq (rtx *operands, int nops)
{
  int regs[4];
  int base_reg;
  HOST_WIDE_INT offset;
  char buf[100];
  int i;

  switch (load_multiple_sequence (operands, nops, regs, &base_reg, &offset))
    {
    case 1:
      strcpy (buf, "ldm%?ia\t");
      break;

    case 2:
      strcpy (buf, "ldm%?ib\t");
      break;

    case 3:
      strcpy (buf, "ldm%?da\t");
      break;

    case 4:
      strcpy (buf, "ldm%?db\t");
      break;

    case 5:
      if (offset >= 0)
 sprintf (buf, "add%%?\t%s%s, %s%s, #%ld", REGISTER_PREFIX,
   reg_names[regs[0]], REGISTER_PREFIX, reg_names[base_reg],
   (long) offset);
      else
 sprintf (buf, "sub%%?\t%s%s, %s%s, #%ld", REGISTER_PREFIX,
   reg_names[regs[0]], REGISTER_PREFIX, reg_names[base_reg],
   (long) -offset);
      output_asm_insn (buf, operands);
      base_reg = regs[0];
      strcpy (buf, "ldm%?ia\t");
      break;

    default:
      gcc_unreachable ();
    }

  sprintf (buf + strlen (buf), "%s%s, {%s%s", REGISTER_PREFIX,
    reg_names[base_reg], REGISTER_PREFIX, reg_names[regs[0]]);

  for (i = 1; i < nops; i++)
    sprintf (buf + strlen (buf), ", %s%s", REGISTER_PREFIX,
      reg_names[regs[i]]);

  strcat (buf, "}\t%@ phole ldm");

  output_asm_insn (buf, operands);
  return "";
}
