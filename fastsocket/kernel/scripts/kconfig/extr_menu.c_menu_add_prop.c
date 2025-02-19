
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expr; } ;
struct property {char* text; TYPE_1__ visible; struct expr* expr; TYPE_2__* menu; } ;
struct expr {int dummy; } ;
typedef enum prop_type { ____Placeholder_prop_type } prop_type ;
struct TYPE_4__ {struct property* prompt; int sym; } ;


 TYPE_2__* current_entry ;
 scalar_t__ isspace (char) ;
 int menu_check_dep (struct expr*) ;
 struct property* prop_alloc (int,int ) ;
 int prop_warn (struct property*,char*) ;

struct property *menu_add_prop(enum prop_type type, char *prompt, struct expr *expr, struct expr *dep)
{
 struct property *prop = prop_alloc(type, current_entry->sym);

 prop->menu = current_entry;
 prop->expr = expr;
 prop->visible.expr = menu_check_dep(dep);

 if (prompt) {
  if (isspace(*prompt)) {
   prop_warn(prop, "leading whitespace ignored");
   while (isspace(*prompt))
    prompt++;
  }
  if (current_entry->prompt)
   prop_warn(prop, "prompt redefined");
  current_entry->prompt = prop;
 }
 prop->text = prompt;

 return prop;
}
