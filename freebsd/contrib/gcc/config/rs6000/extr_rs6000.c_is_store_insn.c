
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INSN_P (int ) ;
 int PATTERN (int ) ;
 int is_store_insn1 (int ) ;

__attribute__((used)) static bool
is_store_insn (rtx insn)
{
  if (!insn || !INSN_P (insn))
    return 0;

  return is_store_insn1 (PATTERN (insn));
}
