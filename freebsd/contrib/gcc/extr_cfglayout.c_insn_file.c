
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INSN_LOCATOR (int ) ;
 char const* locator_file (int ) ;

const char *
insn_file (rtx insn)
{
  return locator_file (INSN_LOCATOR (insn));
}
