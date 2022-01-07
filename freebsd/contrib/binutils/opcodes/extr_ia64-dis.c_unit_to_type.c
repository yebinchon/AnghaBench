
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ia64_insn ;
typedef enum ia64_unit { ____Placeholder_ia64_unit } ia64_unit ;
typedef enum ia64_insn_type { ____Placeholder_ia64_insn_type } ia64_insn_type ;


 int IA64_OP (int ) ;
 int IA64_TYPE_A ;
 int IA64_TYPE_B ;
 int IA64_TYPE_F ;
 int IA64_TYPE_I ;
 int IA64_TYPE_M ;
 int IA64_TYPE_X ;







__attribute__((used)) static enum ia64_insn_type
unit_to_type (ia64_insn opcode, enum ia64_unit unit)
{
  enum ia64_insn_type type;
  int op;

  op = IA64_OP (opcode);

  if (op >= 8 && (unit == 131 || unit == 129))
    {
      type = IA64_TYPE_A;
    }
  else
    {
      switch (unit)
 {
 case 131:
   type = IA64_TYPE_I; break;
 case 129:
   type = IA64_TYPE_M; break;
 case 133:
   type = IA64_TYPE_B; break;
 case 132:
   type = IA64_TYPE_F; break;
        case 130:
 case 128:
   type = IA64_TYPE_X; break;
 default:
   type = -1;
 }
    }
  return type;
}
