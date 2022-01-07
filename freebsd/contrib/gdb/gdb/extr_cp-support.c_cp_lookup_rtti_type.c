
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 scalar_t__ LOC_TYPEDEF ;
 int STRUCT_DOMAIN ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 int TYPE_CODE (struct type*) ;


 struct symbol* lookup_symbol (char const*,struct block*,int ,int *,int *) ;
 int warning (char*,char const*) ;

struct type *
cp_lookup_rtti_type (const char *name, struct block *block)
{
  struct symbol * rtti_sym;
  struct type * rtti_type;

  rtti_sym = lookup_symbol (name, block, STRUCT_DOMAIN, ((void*)0), ((void*)0));

  if (rtti_sym == ((void*)0))
    {
      warning ("RTTI symbol not found for class '%s'", name);
      return ((void*)0);
    }

  if (SYMBOL_CLASS (rtti_sym) != LOC_TYPEDEF)
    {
      warning ("RTTI symbol for class '%s' is not a type", name);
      return ((void*)0);
    }

  rtti_type = SYMBOL_TYPE (rtti_sym);

  switch (TYPE_CODE (rtti_type))
    {
    case 129:
      break;
    case 128:




      warning ("RTTI symbol for class '%s' is a namespace", name);
      return ((void*)0);
    default:
      warning ("RTTI symbol for class '%s' has bad type", name);
      return ((void*)0);
    }

  return rtti_type;
}
