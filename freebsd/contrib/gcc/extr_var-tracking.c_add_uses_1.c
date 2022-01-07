
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int add_uses ;
 int for_each_rtx (int *,int ,void*) ;

__attribute__((used)) static void
add_uses_1 (rtx *x, void *insn)
{
  for_each_rtx (x, add_uses, insn);
}
