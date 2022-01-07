
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_opcode {char* mnemonic; int* arg; } ;


 int A_P ;
 scalar_t__ sprintf (char*,char*,char*) ;
 int syntax_error_arg ;

__attribute__((used)) static char *
insn_fmt_string (struct spu_opcode *format)
{
  static char buf[64];
  int len = 0;
  int i;

  len += sprintf (&buf[len], "%s\t", format->mnemonic);
  for (i = 1; i <= format->arg[0]; i++)
    {
      int arg = format->arg[i];
      char *exp;
      if (i > 1 && arg != A_P && format->arg[i-1] != A_P)
 buf[len++] = ',';
      if (arg == A_P)
 exp = "(";
      else if (arg < A_P)
 exp = i == syntax_error_arg ? "REG" : "reg";
      else
 exp = i == syntax_error_arg ? "IMM" : "imm";
      len += sprintf (&buf[len], "%s", exp);
      if (i > 1 && format->arg[i-1] == A_P)
 buf[len++] = ')';
    }
  buf[len] = 0;
  return buf;
}
