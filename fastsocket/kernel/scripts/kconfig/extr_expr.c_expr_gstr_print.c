
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gstr {int dummy; } ;
struct expr {int dummy; } ;


 int E_NONE ;
 int expr_print (struct expr*,int ,struct gstr*,int ) ;
 int expr_print_gstr_helper ;

void expr_gstr_print(struct expr *e, struct gstr *gs)
{
 expr_print(e, expr_print_gstr_helper, gs, E_NONE);
}
