
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INSN_LOCATOR (int ) ;
 int locator_line (int ) ;

int
insn_line (rtx insn)
{
  return locator_line (INSN_LOCATOR (insn));
}
