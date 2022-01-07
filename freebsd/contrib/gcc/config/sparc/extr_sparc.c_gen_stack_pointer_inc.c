
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 int VOIDmode ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int stack_pointer_rtx ;

__attribute__((used)) static rtx
gen_stack_pointer_inc (rtx increment)
{
  return gen_rtx_SET (VOIDmode,
        stack_pointer_rtx,
        gen_rtx_PLUS (Pmode,
        stack_pointer_rtx,
        increment));
}
