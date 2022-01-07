
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct expression {TYPE_1__* language_defn; } ;
struct TYPE_2__ {struct value* (* evaluate_exp ) (int ,struct expression*,int*,int ) ;} ;


 int EVAL_AVOID_SIDE_EFFECTS ;
 int NULL_TYPE ;
 struct value* stub1 (int ,struct expression*,int*,int ) ;

__attribute__((used)) static struct value *
evaluate_subexp_type (struct expression *exp, int *pos)
{
  return (*exp->language_defn->evaluate_exp)
    (NULL_TYPE, exp, pos, EVAL_AVOID_SIDE_EFFECTS);
}
