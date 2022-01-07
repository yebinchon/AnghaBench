
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct TYPE_2__ {int la_language; } ;


 struct type* SYMBOL_TYPE (struct symbol*) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_BOOL ;
 int VAR_DOMAIN ;
 struct type* builtin_type_bool ;
 struct type* builtin_type_f_logical_s2 ;
 struct type* builtin_type_int ;
 TYPE_1__* current_language ;
 struct type* java_boolean_type ;




 struct symbol* lookup_symbol (char*,int *,int ,int *,int *) ;

struct type *
lang_bool_type (void)
{
  struct symbol *sym;
  struct type *type;
  switch (current_language->la_language)
    {
    case 130:
      sym = lookup_symbol ("logical", ((void*)0), VAR_DOMAIN, ((void*)0), ((void*)0));
      if (sym)
 {
   type = SYMBOL_TYPE (sym);
   if (type && TYPE_CODE (type) == TYPE_CODE_BOOL)
     return type;
 }
      return builtin_type_f_logical_s2;
    case 131:
    case 128:
      if (current_language->la_language==131)
        {sym = lookup_symbol ("bool", ((void*)0), VAR_DOMAIN, ((void*)0), ((void*)0));}
      else
        {sym = lookup_symbol ("boolean", ((void*)0), VAR_DOMAIN, ((void*)0), ((void*)0));}
      if (sym)
 {
   type = SYMBOL_TYPE (sym);
   if (type && TYPE_CODE (type) == TYPE_CODE_BOOL)
     return type;
 }
      return builtin_type_bool;
    case 129:
      sym = lookup_symbol ("boolean", ((void*)0), VAR_DOMAIN, ((void*)0), ((void*)0));
      if (sym)
 {
   type = SYMBOL_TYPE (sym);
   if (type && TYPE_CODE (type) == TYPE_CODE_BOOL)
     return type;
 }
      return java_boolean_type;
    default:
      return builtin_type_int;
    }
}
