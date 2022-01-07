
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 unsigned int BITS_PER_UNIT ;
 scalar_t__ GET_CODE (int ) ;
 unsigned int POINTER_SIZE ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ SYMBOL_REF_FUNCTION_P (int ) ;
 scalar_t__ TARGET_AUTO_PIC ;
 scalar_t__ TARGET_NO_PIC ;
 int asm_out_file ;
 int default_assemble_integer (int ,unsigned int,int) ;
 int fputs (char const* const,int ) ;
 int output_addr_const (int ,int ) ;

__attribute__((used)) static bool
ia64_assemble_integer (rtx x, unsigned int size, int aligned_p)
{
  if (size == POINTER_SIZE / BITS_PER_UNIT
      && !(TARGET_NO_PIC || TARGET_AUTO_PIC)
      && GET_CODE (x) == SYMBOL_REF
      && SYMBOL_REF_FUNCTION_P (x))
    {
      static const char * const directive[2][2] = {

 { "\tdata8.ua\t@fptr(", "\tdata4.ua\t@fptr("},
 { "\tdata8\t@fptr(", "\tdata4\t@fptr("}
      };
      fputs (directive[(aligned_p != 0)][POINTER_SIZE == 32], asm_out_file);
      output_addr_const (asm_out_file, x);
      fputs (")\n", asm_out_file);
      return 1;
    }
  return default_assemble_integer (x, size, aligned_p);
}
