
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int * btr_reference_found ;
 scalar_t__ btr_referenced_p (int ,int *) ;

__attribute__((used)) static rtx *
find_btr_use (rtx insn)
{
  return btr_referenced_p (insn, ((void*)0)) ? btr_reference_found : ((void*)0);
}
