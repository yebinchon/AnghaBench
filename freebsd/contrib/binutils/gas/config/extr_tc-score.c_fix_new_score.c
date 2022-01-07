
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int fragS ;
typedef int fixS ;
struct TYPE_5__ {int X_op; } ;
typedef TYPE_1__ expressionS ;






 int * fix_new (int *,int,short,int ,int ,int,int) ;
 int * fix_new_exp (int *,int,short,TYPE_1__*,int,int) ;
 int make_expr_symbol (TYPE_1__*) ;

__attribute__((used)) static fixS *
fix_new_score (fragS * frag, int where, short int size, expressionS * exp, int pc_rel, int reloc)
{
  fixS *new_fix;

  switch (exp->X_op)
    {
    case 130:
    case 128:
    case 131:
    case 129:
      new_fix = fix_new_exp (frag, where, size, exp, pc_rel, reloc);
      break;
    default:
      new_fix = fix_new (frag, where, size, make_expr_symbol (exp), 0, pc_rel, reloc);
      break;
    }
  return new_fix;
}
