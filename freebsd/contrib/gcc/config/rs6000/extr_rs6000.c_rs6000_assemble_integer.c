
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ABI_AIX ;
 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int ) ;
 int ASM_OUTPUT_ALIGN (int ,int) ;
 int ASM_OUTPUT_LABEL (int ,char*) ;
 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 scalar_t__ DEFAULT_ABI ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ RELOCATABLE_NEEDS_FIXUP ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ TARGET_RELOCATABLE ;
 char* XSTR (int ,int ) ;
 int asm_out_file ;
 int assemble_name (int ,char*) ;
 int default_assemble_integer (int ,unsigned int,int) ;
 int fixuplabelno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ in_section ;
 int output_addr_const (int ,int ) ;
 scalar_t__ text_section ;
 scalar_t__ toc_section ;
 int unlikely_text_section_p (scalar_t__) ;

__attribute__((used)) static bool
rs6000_assemble_integer (rtx x, unsigned int size, int aligned_p)
{
  return default_assemble_integer (x, size, aligned_p);
}
