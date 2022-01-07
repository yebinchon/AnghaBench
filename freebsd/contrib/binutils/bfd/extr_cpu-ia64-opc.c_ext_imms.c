
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_operand {int dummy; } ;
typedef int ia64_insn ;


 char const* ext_imms_scaled (struct ia64_operand const*,int ,int *,int ) ;

__attribute__((used)) static const char*
ext_imms (const struct ia64_operand *self, ia64_insn code, ia64_insn *valuep)
{
  return ext_imms_scaled (self, code, valuep, 0);
}
