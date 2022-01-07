
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int df_urec_mark_reg_use_for_earlyclobber ;
 int for_each_rtx (int *,int ,void*) ;

__attribute__((used)) static void
df_urec_mark_reg_use_for_earlyclobber_1 (rtx *x, void *data)
{
  for_each_rtx (x, df_urec_mark_reg_use_for_earlyclobber, data);
}
