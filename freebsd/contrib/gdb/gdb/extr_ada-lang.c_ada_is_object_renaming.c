
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 int SYMBOL_TYPE (struct symbol*) ;
 char* ada_renaming_type (int ) ;

int
ada_is_object_renaming (struct symbol *sym)
{
  const char *renaming_type = ada_renaming_type (SYMBOL_TYPE (sym));
  return renaming_type != ((void*)0)
    && (renaming_type[2] == '\0' || renaming_type[2] == '_');
}
