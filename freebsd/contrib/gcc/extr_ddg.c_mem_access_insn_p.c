
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int PATTERN (int ) ;
 int rtx_mem_access_p (int ) ;

__attribute__((used)) static bool
mem_access_insn_p (rtx insn)
{
  return rtx_mem_access_p (PATTERN (insn));
}
