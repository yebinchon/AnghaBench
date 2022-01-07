
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST_OR_PURE_CALL_P (int ) ;
 int record_last_mem_set_info (int ) ;

__attribute__((used)) static void
mark_call (rtx insn)
{
  if (! CONST_OR_PURE_CALL_P (insn))
    record_last_mem_set_info (insn);
}
