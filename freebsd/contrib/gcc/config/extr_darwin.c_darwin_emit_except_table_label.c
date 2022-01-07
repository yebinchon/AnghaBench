
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int ) ;
 int ASM_OUTPUT_LABEL (int *,char*) ;
 int except_table_label_num ;

void
darwin_emit_except_table_label (FILE *file)
{
  char section_start_label[30];

  ASM_GENERATE_INTERNAL_LABEL (section_start_label, "GCC_except_table",
          except_table_label_num++);
  ASM_OUTPUT_LABEL (file, section_start_label);
}
