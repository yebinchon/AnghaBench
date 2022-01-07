
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expr {int dummy; } ;
struct TYPE_2__ {int dep; } ;


 TYPE_1__* current_entry ;
 int expr_alloc_and (int ,int ) ;
 int menu_check_dep (struct expr*) ;

void menu_add_dep(struct expr *dep)
{
 current_entry->dep = expr_alloc_and(current_entry->dep, menu_check_dep(dep));
}
