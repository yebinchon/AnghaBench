
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int HOST_WIDE_INT ;


 int ASM_DECLARE_CONSTANT_NAME (int ,char const*,int ,int ) ;
 int ASM_OUTPUT_LABEL (int ,char const*) ;
 int asm_out_file ;
 int get_constant_size (int ) ;
 int output_constant (int ,int ,unsigned int) ;

__attribute__((used)) static void
assemble_constant_contents (tree exp, const char *label, unsigned int align)
{
  HOST_WIDE_INT size;

  size = get_constant_size (exp);






  ASM_OUTPUT_LABEL (asm_out_file, label);



  output_constant (exp, size, align);
}
