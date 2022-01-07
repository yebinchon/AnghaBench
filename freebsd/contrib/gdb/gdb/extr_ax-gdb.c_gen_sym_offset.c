
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct agent_expr {int dummy; } ;


 int SYMBOL_VALUE (struct symbol*) ;
 int gen_offset (struct agent_expr*,int ) ;

__attribute__((used)) static void
gen_sym_offset (struct agent_expr *ax, struct symbol *var)
{
  gen_offset (ax, SYMBOL_VALUE (var));
}
