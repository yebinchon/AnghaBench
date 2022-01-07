
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ subsegT ;
typedef scalar_t__ segT ;


 int * mri_common_symbol ;
 scalar_t__ now_seg ;
 scalar_t__ now_subseg ;
 int subseg_set_rest (scalar_t__,scalar_t__) ;

void
subseg_set (segT secptr, subsegT subseg)
{
  if (! (secptr == now_seg && subseg == now_subseg))
    subseg_set_rest (secptr, subseg);
  mri_common_symbol = ((void*)0);
}
