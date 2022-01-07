
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct expression {TYPE_2__* language_defn; } ;
typedef enum noside { ____Placeholder_noside } noside ;
struct TYPE_4__ {TYPE_1__* la_exp_desc; } ;
struct TYPE_3__ {struct value* (* evaluate_exp ) (struct type*,struct expression*,int*,int) ;} ;


 struct value* stub1 (struct type*,struct expression*,int*,int) ;

__attribute__((used)) static struct value *
evaluate_subexp (struct type *expect_type, struct expression *exp,
   int *pos, enum noside noside)
{
  return (*exp->language_defn->la_exp_desc->evaluate_exp)
    (expect_type, exp, pos, noside);
}
