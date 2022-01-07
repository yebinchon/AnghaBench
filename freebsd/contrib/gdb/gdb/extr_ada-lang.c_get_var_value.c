
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;


 int VAR_DOMAIN ;
 int ada_lookup_symbol_list (char*,int ,int ,struct symbol***,struct block***) ;
 int error (char*,char*) ;
 int get_selected_block (int *) ;
 struct value* value_of_variable (struct symbol*,struct block*) ;

__attribute__((used)) static struct value *
get_var_value (char *name, char *err_msg)
{
  struct symbol **syms;
  struct block **blocks;
  int nsyms;

  nsyms =
    ada_lookup_symbol_list (name, get_selected_block (((void*)0)), VAR_DOMAIN,
       &syms, &blocks);

  if (nsyms != 1)
    {
      if (err_msg == ((void*)0))
 return 0;
      else
 error ("%s", err_msg);
    }

  return value_of_variable (syms[0], blocks[0]);
}
