
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int CONSTANT_P (int ) ;
 int const GET_CODE (int ) ;

 int const MEM ;


 int REGNO (int ) ;
 int SImode ;
 int XEXP (int ,int) ;
 int adjust_address (int ,int ,int) ;
 int asm_fprintf (int ,char*,int,int,...) ;
 int asm_out_file ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int output_asm_insn (char*,int *) ;

const char *
thumb_load_double_from_address (rtx *operands)
{
  rtx addr;
  rtx base;
  rtx offset;
  rtx arg1;
  rtx arg2;

  gcc_assert (GET_CODE (operands[0]) == 128);
  gcc_assert (GET_CODE (operands[1]) == MEM);


  addr = XEXP (operands[1], 0);


  switch (GET_CODE (addr))
    {
    case 128:
      operands[2] = adjust_address (operands[1], SImode, 4);

      if (REGNO (operands[0]) == REGNO (addr))
 {
   output_asm_insn ("ldr\t%H0, %2", operands);
   output_asm_insn ("ldr\t%0, %1", operands);
 }
      else
 {
   output_asm_insn ("ldr\t%0, %1", operands);
   output_asm_insn ("ldr\t%H0, %2", operands);
 }
      break;

    case 131:

      operands[2] = adjust_address (operands[1], SImode, 4);

      output_asm_insn ("ldr\t%0, %1", operands);
      output_asm_insn ("ldr\t%H0, %2", operands);
      break;

    case 129:
      arg1 = XEXP (addr, 0);
      arg2 = XEXP (addr, 1);

      if (CONSTANT_P (arg1))
 base = arg2, offset = arg1;
      else
 base = arg1, offset = arg2;

      gcc_assert (GET_CODE (base) == 128);


      if (GET_CODE (offset) == 128)
 {
   int reg_offset = REGNO (offset);
   int reg_base = REGNO (base);
   int reg_dest = REGNO (operands[0]);



   asm_fprintf (asm_out_file, "\tadd\t%r, %r, %r",
         reg_dest + 1, reg_base, reg_offset);



   asm_fprintf (asm_out_file, "\tldr\t%r, [%r, #0]",
         reg_dest, reg_dest + 1);



   asm_fprintf (asm_out_file, "\tldr\t%r, [%r, #4]",
         reg_dest + 1, reg_dest + 1);
 }
      else
 {

   operands[2] = adjust_address (operands[1], SImode, 4);




   if (REGNO (operands[0]) == REGNO (base))
     {
       output_asm_insn ("ldr\t%H0, %2", operands);
       output_asm_insn ("ldr\t%0, %1", operands);
     }
   else
     {
       output_asm_insn ("ldr\t%0, %1", operands);
       output_asm_insn ("ldr\t%H0, %2", operands);
     }
 }
      break;

    case 130:


      operands[2] = adjust_address (operands[1], SImode, 4);

      output_asm_insn ("ldr\t%H0, %2", operands);
      output_asm_insn ("ldr\t%0, %1", operands);
      break;

    default:
      gcc_unreachable ();
    }

  return "";
}
