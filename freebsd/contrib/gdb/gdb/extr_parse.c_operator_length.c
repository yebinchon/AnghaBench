
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct expression {TYPE_2__* language_defn; } ;
struct TYPE_4__ {TYPE_1__* la_exp_desc; } ;
struct TYPE_3__ {int (* operator_length ) (struct expression*,int,int*,int*) ;} ;


 int stub1 (struct expression*,int,int*,int*) ;

void
operator_length (struct expression *expr, int endpos, int *oplenp, int *argsp)
{
  expr->language_defn->la_exp_desc->operator_length (expr, endpos,
           oplenp, argsp);
}
