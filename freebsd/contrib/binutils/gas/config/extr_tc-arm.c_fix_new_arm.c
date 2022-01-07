
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int fragS ;
struct TYPE_8__ {int tc_fix_data; } ;
typedef TYPE_1__ fixS ;
struct TYPE_9__ {int X_op; } ;
typedef TYPE_2__ expressionS ;






 TYPE_1__* fix_new (int *,int,short,int ,int ,int,int) ;
 TYPE_1__* fix_new_exp (int *,int,short,TYPE_2__*,int,int) ;
 int make_expr_symbol (TYPE_2__*) ;
 int thumb_mode ;

__attribute__((used)) static void
fix_new_arm (fragS * frag,
      int where,
      short int size,
      expressionS * exp,
      int pc_rel,
      int reloc)
{
  fixS * new_fix;

  switch (exp->X_op)
    {
    case 130:
    case 128:
    case 131:
    case 129:
      new_fix = fix_new_exp (frag, where, size, exp, pc_rel, reloc);
      break;

    default:
      new_fix = fix_new (frag, where, size, make_expr_symbol (exp), 0,
    pc_rel, reloc);
      break;
    }



  new_fix->tc_fix_data = thumb_mode;
}
