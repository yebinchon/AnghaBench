
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct expression {TYPE_2__* language_defn; } ;
struct TYPE_4__ {TYPE_1__* la_exp_desc; } ;
struct TYPE_3__ {int (* dump_subexp_body ) (struct expression*,struct ui_file*,int) ;} ;


 int stub1 (struct expression*,struct ui_file*,int) ;

__attribute__((used)) static int
dump_subexp_body (struct expression *exp, struct ui_file *stream, int elt)
{
  return exp->language_defn->la_exp_desc->dump_subexp_body (exp, stream, elt);
}
