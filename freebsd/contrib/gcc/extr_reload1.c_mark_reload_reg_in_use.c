
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reload_type { ____Placeholder_reload_type } reload_type ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
 int SET_HARD_REG_BIT (int ,unsigned int) ;
 unsigned int** hard_regno_nregs ;
 int reload_reg_used ;
 int reload_reg_used_at_all ;
 int * reload_reg_used_in_inpaddr_addr ;
 int * reload_reg_used_in_input ;
 int * reload_reg_used_in_input_addr ;
 int reload_reg_used_in_insn ;
 int reload_reg_used_in_op_addr ;
 int reload_reg_used_in_op_addr_reload ;
 int reload_reg_used_in_other_addr ;
 int * reload_reg_used_in_outaddr_addr ;
 int * reload_reg_used_in_output ;
 int * reload_reg_used_in_output_addr ;

__attribute__((used)) static void
mark_reload_reg_in_use (unsigned int regno, int opnum, enum reload_type type,
   enum machine_mode mode)
{
  unsigned int nregs = hard_regno_nregs[regno][mode];
  unsigned int i;

  for (i = regno; i < nregs + regno; i++)
    {
      switch (type)
 {
 case 128:
   SET_HARD_REG_BIT (reload_reg_used, i);
   break;

 case 136:
   SET_HARD_REG_BIT (reload_reg_used_in_input_addr[opnum], i);
   break;

 case 138:
   SET_HARD_REG_BIT (reload_reg_used_in_inpaddr_addr[opnum], i);
   break;

 case 129:
   SET_HARD_REG_BIT (reload_reg_used_in_output_addr[opnum], i);
   break;

 case 131:
   SET_HARD_REG_BIT (reload_reg_used_in_outaddr_addr[opnum], i);
   break;

 case 133:
   SET_HARD_REG_BIT (reload_reg_used_in_op_addr, i);
   break;

 case 134:
   SET_HARD_REG_BIT (reload_reg_used_in_op_addr_reload, i);
   break;

 case 132:
   SET_HARD_REG_BIT (reload_reg_used_in_other_addr, i);
   break;

 case 137:
   SET_HARD_REG_BIT (reload_reg_used_in_input[opnum], i);
   break;

 case 130:
   SET_HARD_REG_BIT (reload_reg_used_in_output[opnum], i);
   break;

 case 135:
   SET_HARD_REG_BIT (reload_reg_used_in_insn, i);
   break;
 }

      SET_HARD_REG_BIT (reload_reg_used_at_all, i);
    }
}
