
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct property {int expr; } ;
struct TYPE_2__ {int sym; } ;


 int P_DEFAULT ;



 TYPE_1__* current_entry ;
 int expr_alloc_symbol (int ) ;
 int modules_sym ;
 int prop_add_env (char*) ;
 struct property* prop_alloc (int ,int ) ;
 int sym_defconfig_list ;
 int zconf_error (char*) ;

void menu_add_option(int token, char *arg)
{
 struct property *prop;

 switch (token) {
 case 128:
  prop = prop_alloc(P_DEFAULT, modules_sym);
  prop->expr = expr_alloc_symbol(current_entry->sym);
  break;
 case 130:
  if (!sym_defconfig_list)
   sym_defconfig_list = current_entry->sym;
  else if (sym_defconfig_list != current_entry->sym)
   zconf_error("trying to redefine defconfig symbol");
  break;
 case 129:
  prop_add_env(arg);
  break;
 }
}
