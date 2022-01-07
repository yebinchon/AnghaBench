
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* optab ;
typedef enum optab_methods { ____Placeholder_optab_methods } optab_methods ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {int code; } ;


 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ expand_binop (int,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ simplify_binary_operation (int ,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static rtx
simplify_expand_binop (enum machine_mode mode, optab binoptab,
         rtx op0, rtx op1, rtx target, int unsignedp,
         enum optab_methods methods)
{
  if (CONSTANT_P (op0) && CONSTANT_P (op1))
    {
      rtx x = simplify_binary_operation (binoptab->code, mode, op0, op1);

      if (x)
 return x;
    }

  return expand_binop (mode, binoptab, op0, op1, target, unsignedp, methods);
}
