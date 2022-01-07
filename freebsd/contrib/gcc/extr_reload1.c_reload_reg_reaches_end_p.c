
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reload_type { ____Placeholder_reload_type } reload_type ;
 int TEST_HARD_REG_BIT (int ,unsigned int) ;
 int gcc_unreachable () ;
 int reload_n_operands ;
 int reload_reg_used ;
 int * reload_reg_used_in_inpaddr_addr ;
 int * reload_reg_used_in_input ;
 int * reload_reg_used_in_input_addr ;
 int reload_reg_used_in_insn ;
 int reload_reg_used_in_op_addr ;
 int reload_reg_used_in_op_addr_reload ;
 int * reload_reg_used_in_outaddr_addr ;
 int * reload_reg_used_in_output ;
 int * reload_reg_used_in_output_addr ;

__attribute__((used)) static int
reload_reg_reaches_end_p (unsigned int regno, int opnum, enum reload_type type)
{
  int i;

  switch (type)
    {
    case 128:


      return 1;






    case 132:



      for (i = 0; i < reload_n_operands; i++)
 if (TEST_HARD_REG_BIT (reload_reg_used_in_output_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_outaddr_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_output[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_input_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_inpaddr_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_input[i], regno))
   return 0;

      return (! TEST_HARD_REG_BIT (reload_reg_used_in_op_addr, regno)
       && ! TEST_HARD_REG_BIT (reload_reg_used_in_op_addr_reload, regno)
       && ! TEST_HARD_REG_BIT (reload_reg_used_in_insn, regno)
       && ! TEST_HARD_REG_BIT (reload_reg_used, regno));

    case 136:
    case 138:





      for (i = opnum; i < reload_n_operands; i++)
 if (TEST_HARD_REG_BIT (reload_reg_used_in_input[i], regno))
   return 0;

      for (i = opnum + 1; i < reload_n_operands; i++)
 if (TEST_HARD_REG_BIT (reload_reg_used_in_input_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_inpaddr_addr[i], regno))
   return 0;

      for (i = 0; i < reload_n_operands; i++)
 if (TEST_HARD_REG_BIT (reload_reg_used_in_output_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_outaddr_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_output[i], regno))
   return 0;

      if (TEST_HARD_REG_BIT (reload_reg_used_in_op_addr_reload, regno))
 return 0;

      return (!TEST_HARD_REG_BIT (reload_reg_used_in_op_addr, regno)
       && !TEST_HARD_REG_BIT (reload_reg_used_in_insn, regno)
       && !TEST_HARD_REG_BIT (reload_reg_used, regno));

    case 137:





      for (i = opnum + 1; i < reload_n_operands; i++)
 if (TEST_HARD_REG_BIT (reload_reg_used_in_input_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_inpaddr_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_input[i], regno))
   return 0;



    case 133:


      for (i = 0; i < reload_n_operands; i++)
 if (TEST_HARD_REG_BIT (reload_reg_used_in_output_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_outaddr_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_output[i], regno))
   return 0;

      return (!TEST_HARD_REG_BIT (reload_reg_used, regno));

    case 134:
      for (i = 0; i < reload_n_operands; i++)
 if (TEST_HARD_REG_BIT (reload_reg_used_in_output_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_outaddr_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_output[i], regno))
   return 0;

      return (!TEST_HARD_REG_BIT (reload_reg_used_in_op_addr, regno)
       && !TEST_HARD_REG_BIT (reload_reg_used_in_insn, regno)
       && !TEST_HARD_REG_BIT (reload_reg_used, regno));

    case 135:



      opnum = reload_n_operands;



    case 130:
    case 129:
    case 131:




      for (i = 0; i < opnum; i++)
 if (TEST_HARD_REG_BIT (reload_reg_used_in_output_addr[i], regno)
     || TEST_HARD_REG_BIT (reload_reg_used_in_outaddr_addr[i], regno))
   return 0;

      return 1;

    default:
      gcc_unreachable ();
    }
}
