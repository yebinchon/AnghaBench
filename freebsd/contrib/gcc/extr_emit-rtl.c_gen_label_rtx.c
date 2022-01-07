
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int NULL_RTX ;
 int VOIDmode ;
 int gen_rtx_CODE_LABEL (int ,int ,int ,int ,int *,int ,int *,int ) ;
 int label_num ;

rtx
gen_label_rtx (void)
{
  return gen_rtx_CODE_LABEL (VOIDmode, 0, NULL_RTX, NULL_RTX,

        ((void*)0), label_num++, ((void*)0), 0);
                                                  }
