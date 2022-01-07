
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int type; char* name; } ;
struct TYPE_3__ {struct symbol* sym; } ;


 int S_UNKNOWN ;
 TYPE_1__* current_entry ;
 int menu_warn (TYPE_1__*,char*,char*,int ,int ) ;
 int sym_type_name (int) ;

void menu_set_type(int type)
{
 struct symbol *sym = current_entry->sym;

 if (sym->type == type)
  return;
 if (sym->type == S_UNKNOWN) {
  sym->type = type;
  return;
 }
 menu_warn(current_entry, "type of '%s' redefined from '%s' to '%s'",
     sym->name ? sym->name : "<choice>",
     sym_type_name(sym->type), sym_type_name(type));
}
