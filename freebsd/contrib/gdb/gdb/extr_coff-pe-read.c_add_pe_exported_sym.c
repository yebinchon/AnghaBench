
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_pe_section_data {int ms_type; scalar_t__ vma_offset; } ;
struct objfile {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int prim_record_minimal_symbol (char*,scalar_t__,int ,struct objfile*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 int xfree (char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
add_pe_exported_sym (char *sym_name,
       unsigned long func_rva,
       const struct read_pe_section_data *section_data,
       const char *dll_name, struct objfile *objfile)
{


  CORE_ADDR vma = func_rva + section_data->vma_offset;

  char *qualified_name = 0;
  int dll_name_len = strlen (dll_name);
  int count;





  qualified_name = xmalloc (dll_name_len + strlen (sym_name) + 2);

  strncpy (qualified_name, dll_name, dll_name_len);
  qualified_name[dll_name_len] = '!';
  strcpy (qualified_name + dll_name_len + 1, sym_name);

  prim_record_minimal_symbol (qualified_name,
         vma, section_data->ms_type, objfile);

  xfree (qualified_name);


  prim_record_minimal_symbol (sym_name, vma, section_data->ms_type, objfile);
}
