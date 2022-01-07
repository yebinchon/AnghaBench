
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ insn; } ;


 scalar_t__ INSN_CODE (scalar_t__) ;
 int extract_insn (scalar_t__) ;
 TYPE_1__ recog_data ;

void
extract_insn_cached (rtx insn)
{
  if (recog_data.insn == insn && INSN_CODE (insn) >= 0)
    return;
  extract_insn (insn);
  recog_data.insn = insn;
}
