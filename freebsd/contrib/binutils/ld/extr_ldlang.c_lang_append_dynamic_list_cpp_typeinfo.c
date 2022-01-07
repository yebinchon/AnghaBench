
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_elf_version_expr {int dummy; } ;


 unsigned int ARRAY_SIZE (char const**) ;
 int FALSE ;
 int lang_append_dynamic_list (struct bfd_elf_version_expr*) ;
 struct bfd_elf_version_expr* lang_new_vers_pattern (struct bfd_elf_version_expr*,char const*,char*,int ) ;

void
lang_append_dynamic_list_cpp_typeinfo (void)
{
  const char * symbols [] =
    {
      "typeinfo name for*",
      "typeinfo for*"
    };
  struct bfd_elf_version_expr *dynamic = ((void*)0);
  unsigned int i;

  for (i = 0; i < ARRAY_SIZE (symbols); i++)
    dynamic = lang_new_vers_pattern (dynamic, symbols [i], "C++",
         FALSE);

  lang_append_dynamic_list (dynamic);
}
