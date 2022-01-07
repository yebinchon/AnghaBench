
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ ada_args_match (struct symbol*,struct value**,int) ;
 struct type* builtin_type_void ;
 struct type* check_typedef (int ) ;
 int printf_filtered (char*,char const*) ;
 scalar_t__ return_match (int ,struct type*) ;
 int user_select_syms (struct symbol**,struct block**,int,int) ;

int
ada_resolve_function (struct symbol *syms[], struct block *blocks[],
        int nsyms, struct value **args, int nargs,
        const char *name, struct type *context_type)
{
  int k;
  int m;
  struct type *fallback;
  struct type *return_type;

  return_type = context_type;
  if (context_type == ((void*)0))
    fallback = builtin_type_void;
  else
    fallback = ((void*)0);

  m = 0;
  while (1)
    {
      for (k = 0; k < nsyms; k += 1)
 {
   struct type *type = check_typedef (SYMBOL_TYPE (syms[k]));

   if (ada_args_match (syms[k], args, nargs)
       && return_match (SYMBOL_TYPE (syms[k]), return_type))
     {
       syms[m] = syms[k];
       if (blocks != ((void*)0))
  blocks[m] = blocks[k];
       m += 1;
     }
 }
      if (m > 0 || return_type == fallback)
 break;
      else
 return_type = fallback;
    }

  if (m == 0)
    return -1;
  else if (m > 1)
    {
      printf_filtered ("Multiple matches for %s\n", name);
      user_select_syms (syms, blocks, m, 1);
      return 0;
    }
  return 0;
}
