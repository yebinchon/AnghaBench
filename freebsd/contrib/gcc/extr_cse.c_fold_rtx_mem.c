
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int fold_rtx_mem_1 (int ,int ) ;
 int table_size ;

__attribute__((used)) static rtx
fold_rtx_mem (rtx x, rtx insn)
{
  static unsigned int depth;
  rtx ret;

  if (depth > 3 + table_size)
    return x;

  depth++;
  ret = fold_rtx_mem_1 (x, insn);
  depth--;

  return ret;
}
