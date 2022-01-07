
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {int dummy; } ;
typedef int FILE ;


 int E_NONE ;
 int expr_print (struct expr*,int ,int *,int ) ;
 int expr_print_file_helper ;

void expr_fprint(struct expr *e, FILE *out)
{
 expr_print(e, expr_print_file_helper, out, E_NONE);
}
