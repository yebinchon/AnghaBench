
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int INTVAL (int ) ;
 int gen_int_mode (int ,int) ;

__attribute__((used)) static rtx
neg_const_int (enum machine_mode mode, rtx i)
{
  return gen_int_mode (- INTVAL (i), mode);
}
