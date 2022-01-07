
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST_VECTOR_ELT (int ,int) ;
 int CONST_VECTOR_NUNITS (int ) ;
 int GEN_INT (int ) ;
 int GET_MODE_CLASS (int) ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_SIZE (int) ;




 int emit_insn_after (int ,int ) ;
 int gcc_unreachable () ;
 int gen_consttable_float (int ) ;
 int gen_consttable_int (int ,int ) ;

__attribute__((used)) static rtx
dump_constants_1 (enum machine_mode mode, rtx value, rtx insn)
{
  switch (GET_MODE_CLASS (mode))
    {
    case 130:
      {
 rtx size = GEN_INT (GET_MODE_SIZE (mode));
 return emit_insn_after (gen_consttable_int (value, size), insn);
      }

    case 131:
      return emit_insn_after (gen_consttable_float (value), insn);

    case 129:
    case 128:
      {
 int i;
 for (i = 0; i < CONST_VECTOR_NUNITS (value); i++)
   insn = dump_constants_1 (GET_MODE_INNER (mode),
       CONST_VECTOR_ELT (value, i), insn);
 return insn;
      }

    default:
      gcc_unreachable ();
    }
}
