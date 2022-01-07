
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {int dummy; } ;
typedef enum prop_type { ____Placeholder_prop_type } prop_type ;


 int menu_add_prop (int,int *,struct expr*,struct expr*) ;

void menu_add_expr(enum prop_type type, struct expr *expr, struct expr *dep)
{
 menu_add_prop(type, ((void*)0), expr, dep);
}
