
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;


 int STRUCT_DOMAIN ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 int error (char*) ;
 struct type* java_object_type ;
 struct symbol* lookup_symbol (char*,int *,int ,int*,struct symtab**) ;

struct type *
get_java_object_type (void)
{
  if (java_object_type == ((void*)0))
    {
      struct symbol *sym;
      sym = lookup_symbol ("java.lang.Object", ((void*)0), STRUCT_DOMAIN,
      (int *) 0, (struct symtab **) ((void*)0));
      if (sym == ((void*)0))
 error ("cannot find java.lang.Object");
      java_object_type = SYMBOL_TYPE (sym);
    }
  return java_object_type;
}
