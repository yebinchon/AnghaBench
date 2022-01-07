
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_of_data {int found; int pat; } ;
typedef int rtx ;


 scalar_t__ INSN_P (int ) ;
 int NULL_RTX ;
 int PATTERN (int ) ;
 int note_stores (int ,int ,struct set_of_data*) ;
 int set_of_1 ;

rtx
set_of (rtx pat, rtx insn)
{
  struct set_of_data data;
  data.found = NULL_RTX;
  data.pat = pat;
  note_stores (INSN_P (insn) ? PATTERN (insn) : insn, set_of_1, &data);
  return data.found;
}
