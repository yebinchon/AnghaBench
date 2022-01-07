
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 int VOIDmode ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_PRE_DEC (int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int stack_pointer_rtx ;

__attribute__((used)) static rtx
gen_push (rtx arg)
{
  return gen_rtx_SET (VOIDmode,
        gen_rtx_MEM (Pmode,
       gen_rtx_PRE_DEC (Pmode,
          stack_pointer_rtx)),
        arg);
}
