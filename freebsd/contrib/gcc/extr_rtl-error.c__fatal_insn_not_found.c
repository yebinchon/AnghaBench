
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ INSN_CODE (int ) ;
 int _fatal_insn (char*,int ,char const*,int,char const*) ;

void
_fatal_insn_not_found (rtx insn, const char *file, int line,
         const char *function)
{
  if (INSN_CODE (insn) < 0)
    _fatal_insn ("unrecognizable insn:", insn, file, line, function);
  else
    _fatal_insn ("insn does not satisfy its constraints:",
  insn, file, line, function);
}
