
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 unsigned int BIGGEST_ALIGNMENT ;
 unsigned int BITS_PER_UNIT ;
 scalar_t__ CONSTANT_POOL_ADDRESS_P (int ) ;
 scalar_t__ CONST_VECTOR ;
 int CONST_VECTOR_ELT (int ,int) ;
 int CONST_VECTOR_NUNITS (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ NEED_GOT_RELOC ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_LOCAL_P (int ) ;
 unsigned int UNITS_PER_WORD ;



 scalar_t__ arm_vector_mode_supported_p (int) ;
 int asm_out_file ;
 int assemble_integer (int ,unsigned int,unsigned int,int) ;
 int default_assemble_integer (int ,unsigned int,int) ;
 scalar_t__ flag_pic ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ making_const_table ;
 int output_addr_const (int ,int ) ;

__attribute__((used)) static bool
arm_assemble_integer (rtx x, unsigned int size, int aligned_p)
{
  if (size == UNITS_PER_WORD && aligned_p)
    {
      fputs ("\t.word\t", asm_out_file);
      output_addr_const (asm_out_file, x);



      if (NEED_GOT_RELOC && flag_pic && making_const_table &&
   (GET_CODE (x) == SYMBOL_REF || GET_CODE (x) == LABEL_REF))
 {
   if (GET_CODE (x) == SYMBOL_REF
       && (CONSTANT_POOL_ADDRESS_P (x)
    || SYMBOL_REF_LOCAL_P (x)))
     fputs ("(GOTOFF)", asm_out_file);
   else if (GET_CODE (x) == LABEL_REF)
     fputs ("(GOTOFF)", asm_out_file);
   else
     fputs ("(GOT)", asm_out_file);
 }
      fputc ('\n', asm_out_file);
      return 1;
    }

  if (arm_vector_mode_supported_p (GET_MODE (x)))
    {
      int i, units;

      gcc_assert (GET_CODE (x) == CONST_VECTOR);

      units = CONST_VECTOR_NUNITS (x);

      switch (GET_MODE (x))
 {
 case 130: size = 4; break;
 case 129: size = 2; break;
 case 128: size = 1; break;
 default:
   gcc_unreachable ();
 }

      for (i = 0; i < units; i++)
 {
   rtx elt;

   elt = CONST_VECTOR_ELT (x, i);
   assemble_integer
     (elt, size, i == 0 ? BIGGEST_ALIGNMENT : size * BITS_PER_UNIT, 1);
 }

      return 1;
    }

  return default_assemble_integer (x, size, aligned_p);
}
