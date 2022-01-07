
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DECL_ASSEMBLER_NAME (int ) ;
 char* IDENTIFIER_POINTER (int ) ;
 int MACHO_DYNAMIC_NO_PIC_P ;
 int current_function_decl ;
 int current_pic_label_num ;
 int fprintf (int *,char*,int) ;
 char const* function_base_func_name ;
 int gcc_assert (int) ;

void
machopic_output_function_base_name (FILE *file)
{
  const char *current_name;


  gcc_assert (!MACHO_DYNAMIC_NO_PIC_P);
  current_name =
    IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (current_function_decl));
  if (function_base_func_name != current_name)
    {
      ++current_pic_label_num;
      function_base_func_name = current_name;
    }
  fprintf (file, "\"L%011d$pb\"", current_pic_label_num);
}
