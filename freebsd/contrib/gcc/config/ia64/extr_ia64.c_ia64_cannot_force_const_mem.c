
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ tls_symbolic_operand_type (int ) ;

__attribute__((used)) static bool
ia64_cannot_force_const_mem (rtx x)
{
  return tls_symbolic_operand_type (x) != 0;
}
