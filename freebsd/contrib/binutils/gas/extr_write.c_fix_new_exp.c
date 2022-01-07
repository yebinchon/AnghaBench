
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
typedef int offsetT ;
typedef int fragS ;
typedef int fixS ;
struct TYPE_4__ {int X_op; int X_add_number; int * X_add_symbol; int * X_op_symbol; } ;
typedef TYPE_1__ expressionS ;
typedef int RELOC_ENUM ;


 int BFD_RELOC_RVA ;
 int _ (char*) ;
 int as_bad (int ) ;
 int * fix_new_internal (int *,int,int,int *,int *,int ,int,int ) ;
 int * make_expr_symbol (TYPE_1__*) ;

fixS *
fix_new_exp (fragS *frag,
      int where,
      int size,
      expressionS *exp,
      int pcrel,
      RELOC_ENUM r_type )
{
  symbolS *add = ((void*)0);
  symbolS *sub = ((void*)0);
  offsetT off = 0;

  switch (exp->X_op)
    {
    case 135:
      break;

    case 132:
      as_bad (_("register value used as expression"));
      break;

    case 134:


      {
 symbolS *stmp = make_expr_symbol (exp);

 exp->X_op = 130;
 exp->X_op_symbol = 0;
 exp->X_add_symbol = stmp;
 exp->X_add_number = 0;

 return fix_new_exp (frag, where, size, exp, pcrel, r_type);
      }

    case 129:
      add = exp->X_add_symbol;
      off = exp->X_add_number;
      r_type = BFD_RELOC_RVA;
      break;

    case 128:
      sub = exp->X_add_symbol;
      off = exp->X_add_number;
      break;

    case 131:
      sub = exp->X_op_symbol;

    case 130:
      add = exp->X_add_symbol;

    case 133:
      off = exp->X_add_number;
      break;

    default:
      add = make_expr_symbol (exp);
      break;
    }

  return fix_new_internal (frag, where, size, add, sub, off, pcrel, r_type);
}
