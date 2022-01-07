
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* X_op_symbol; TYPE_3__* X_add_symbol; } ;
struct TYPE_14__ {int sy_resolving; TYPE_2__ sy_value; scalar_t__ sy_forward_ref; TYPE_1__* bsym; } ;
typedef TYPE_3__ symbolS ;
struct TYPE_12__ {scalar_t__ section; } ;


 int LOCAL_SYMBOL_CHECK (TYPE_3__*) ;
 int S_GET_NAME (TYPE_3__*) ;
 scalar_t__ S_IS_VOLATILE (TYPE_3__*) ;
 scalar_t__ expr_section ;
 TYPE_3__* symbol_clone (TYPE_3__*,int ) ;
 TYPE_3__* symbol_find_exact (int ) ;

symbolS *
symbol_clone_if_forward_ref (symbolS *symbolP, int is_forward)
{
  if (symbolP && !LOCAL_SYMBOL_CHECK (symbolP))
    {
      symbolS *add_symbol = symbolP->sy_value.X_add_symbol;
      symbolS *op_symbol = symbolP->sy_value.X_op_symbol;

      if (symbolP->sy_forward_ref)
 is_forward = 1;

      if (is_forward)
 {



   if (add_symbol && S_IS_VOLATILE (add_symbol))
     add_symbol = symbol_find_exact (S_GET_NAME (add_symbol));
   if (op_symbol && S_IS_VOLATILE (op_symbol))
     op_symbol = symbol_find_exact (S_GET_NAME (op_symbol));
 }



      if (symbolP->bsym->section == expr_section && !symbolP->sy_resolving)
 {
   symbolP->sy_resolving = 1;
   add_symbol = symbol_clone_if_forward_ref (add_symbol, is_forward);
   op_symbol = symbol_clone_if_forward_ref (op_symbol, is_forward);
   symbolP->sy_resolving = 0;
 }

      if (symbolP->sy_forward_ref
   || add_symbol != symbolP->sy_value.X_add_symbol
   || op_symbol != symbolP->sy_value.X_op_symbol)
 symbolP = symbol_clone (symbolP, 0);

      symbolP->sy_value.X_add_symbol = add_symbol;
      symbolP->sy_value.X_op_symbol = op_symbol;
    }

  return symbolP;
}
