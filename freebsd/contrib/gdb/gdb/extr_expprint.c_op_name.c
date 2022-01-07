
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct expression {TYPE_2__* language_defn; } ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
struct TYPE_4__ {TYPE_1__* la_exp_desc; } ;
struct TYPE_3__ {char* (* op_name ) (int) ;} ;


 char* stub1 (int) ;

__attribute__((used)) static char *
op_name (struct expression *exp, enum exp_opcode opcode)
{
  return exp->language_defn->la_exp_desc->op_name (opcode);
}
