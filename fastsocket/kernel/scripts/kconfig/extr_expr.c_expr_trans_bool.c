
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * sym; struct expr* expr; } ;
struct TYPE_5__ {TYPE_1__* sym; struct expr* expr; } ;
struct expr {int type; TYPE_3__ right; TYPE_2__ left; } ;
struct TYPE_4__ {int type; } ;





 int E_SYMBOL ;

 int S_TRISTATE ;
 int symbol_no ;

struct expr *expr_trans_bool(struct expr *e)
{
 if (!e)
  return ((void*)0);
 switch (e->type) {
 case 131:
 case 129:
 case 130:
  e->left.expr = expr_trans_bool(e->left.expr);
  e->right.expr = expr_trans_bool(e->right.expr);
  break;
 case 128:

  if (e->left.sym->type == S_TRISTATE) {
   if (e->right.sym == &symbol_no) {
    e->type = E_SYMBOL;
    e->right.sym = ((void*)0);
   }
  }
  break;
 default:
  ;
 }
 return e;
}
