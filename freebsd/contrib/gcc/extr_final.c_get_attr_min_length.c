
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int get_attr_length_1 (int ,int ) ;
 int insn_min_length ;

int
get_attr_min_length (rtx insn)
{
  return get_attr_length_1 (insn, insn_min_length);
}
