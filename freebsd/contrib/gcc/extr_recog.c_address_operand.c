
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int memory_address_p (int,int ) ;

int
address_operand (rtx op, enum machine_mode mode)
{
  return memory_address_p (mode, op);
}
