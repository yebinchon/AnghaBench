
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int gen_rtx_REG (int ,int ) ;
 int max_reg_num () ;
 int memory_address_p (int,int ) ;

__attribute__((used)) static int
maybe_memory_address_p (enum machine_mode mode, rtx ad, rtx *part)
{
  int retv;
  rtx tem = *part;
  rtx reg = gen_rtx_REG (GET_MODE (tem), max_reg_num ());

  *part = reg;
  retv = memory_address_p (mode, ad);
  *part = tem;

  return retv;
}
