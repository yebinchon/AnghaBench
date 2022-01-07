
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ASM_FORMAT_PRIVATE_NAME (char*,char*,int ) ;
 int DECL_ASSEMBLER_NAME (int ) ;
 size_t IDENTIFIER_LENGTH (int ) ;
 int IDENTIFIER_POINTER (int ) ;
 char* alloca (int) ;
 int current_function_decl ;
 int get_identifier (char*) ;
 int memcpy (char*,int ,size_t) ;
 int strcpy (char*,char*) ;
 int tmp_ompfn_id_num ;

__attribute__((used)) static tree
create_omp_child_function_name (void)
{
  tree name = DECL_ASSEMBLER_NAME (current_function_decl);
  size_t len = IDENTIFIER_LENGTH (name);
  char *tmp_name, *prefix;

  prefix = alloca (len + sizeof ("_omp_fn"));
  memcpy (prefix, IDENTIFIER_POINTER (name), len);
  strcpy (prefix + len, "_omp_fn");

  prefix[len] = '.';



  ASM_FORMAT_PRIVATE_NAME (tmp_name, prefix, tmp_ompfn_id_num++);
  return get_identifier (tmp_name);
}
