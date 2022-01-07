
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ contains (int ,int *) ;
 int epilogue ;
 int prologue ;

int
prologue_epilogue_contains (rtx insn)
{
  if (contains (insn, &prologue))
    return 1;
  if (contains (insn, &epilogue))
    return 1;
  return 0;
}
