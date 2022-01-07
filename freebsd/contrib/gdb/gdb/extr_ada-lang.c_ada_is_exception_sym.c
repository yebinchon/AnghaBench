
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 scalar_t__ DEPRECATED_STREQ (char*,char*) ;
 scalar_t__ LOC_BLOCK ;
 scalar_t__ LOC_CONST ;
 scalar_t__ LOC_TYPEDEF ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 int SYMBOL_TYPE (struct symbol*) ;
 char* type_name_no_tag (int ) ;

int
ada_is_exception_sym (struct symbol *sym)
{
  char *type_name = type_name_no_tag (SYMBOL_TYPE (sym));

  return (SYMBOL_CLASS (sym) != LOC_TYPEDEF
   && SYMBOL_CLASS (sym) != LOC_BLOCK
   && SYMBOL_CLASS (sym) != LOC_CONST
   && type_name != ((void*)0) && DEPRECATED_STREQ (type_name, "exception"));
}
