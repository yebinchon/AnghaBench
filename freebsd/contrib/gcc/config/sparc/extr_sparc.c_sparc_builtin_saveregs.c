
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int words; } ;


 scalar_t__ FIRST_PARM_OFFSET (int ) ;
 int GEN_INT (scalar_t__) ;
 int Pmode ;
 scalar_t__ SPARC_INCOMING_INT_ARG_FIRST ;
 int SPARC_INT_ARG_MAX ;
 int UNITS_PER_WORD ;
 TYPE_1__ current_function_args_info ;
 int emit_move_insn (int ,int ) ;
 int frame_pointer_rtx ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_REG (int ,scalar_t__) ;
 int word_mode ;

__attribute__((used)) static rtx
sparc_builtin_saveregs (void)
{
  int first_reg = current_function_args_info.words;
  rtx address;
  int regno;

  for (regno = first_reg; regno < SPARC_INT_ARG_MAX; regno++)
    emit_move_insn (gen_rtx_MEM (word_mode,
     gen_rtx_PLUS (Pmode,
            frame_pointer_rtx,
            GEN_INT (FIRST_PARM_OFFSET (0)
       + (UNITS_PER_WORD
          * regno)))),
      gen_rtx_REG (word_mode,
     SPARC_INCOMING_INT_ARG_FIRST + regno));

  address = gen_rtx_PLUS (Pmode,
     frame_pointer_rtx,
     GEN_INT (FIRST_PARM_OFFSET (0)
       + UNITS_PER_WORD * first_reg));

  return address;
}
