
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
struct expr_symbol_line {struct expr_symbol_line* next; int line; int file; int * sym; } ;
struct TYPE_5__ {scalar_t__ X_op; scalar_t__ X_add_number; scalar_t__ X_unsigned; int * X_add_symbol; } ;
typedef TYPE_1__ expressionS ;


 int FAKE_LABEL_NAME ;
 scalar_t__ O_big ;
 scalar_t__ O_constant ;
 scalar_t__ O_symbol ;
 int _ (char*) ;
 int absolute_section ;
 int as_bad (int ) ;
 int as_where (int *,int *) ;
 int clean_up_expression (TYPE_1__*) ;
 int expr_section ;
 struct expr_symbol_line* expr_symbol_lines ;
 int resolve_symbol_value (int *) ;
 int * symbol_create (int ,int ,int ,int *) ;
 int symbol_set_value_expression (int *,TYPE_1__*) ;
 scalar_t__ xmalloc (int) ;
 int zero_address_frag ;

symbolS *
make_expr_symbol (expressionS *expressionP)
{
  expressionS zero;
  symbolS *symbolP;
  struct expr_symbol_line *n;

  if (expressionP->X_op == O_symbol
      && expressionP->X_add_number == 0)
    return expressionP->X_add_symbol;

  if (expressionP->X_op == O_big)
    {



      if (expressionP->X_add_number > 0)
 as_bad (_("bignum invalid"));
      else
 as_bad (_("floating point number invalid"));
      zero.X_op = O_constant;
      zero.X_add_number = 0;
      zero.X_unsigned = 0;
      clean_up_expression (&zero);
      expressionP = &zero;
    }





  symbolP = symbol_create (FAKE_LABEL_NAME,
      (expressionP->X_op == O_constant
       ? absolute_section
       : expr_section),
      0, &zero_address_frag);
  symbol_set_value_expression (symbolP, expressionP);

  if (expressionP->X_op == O_constant)
    resolve_symbol_value (symbolP);

  n = (struct expr_symbol_line *) xmalloc (sizeof *n);
  n->sym = symbolP;
  as_where (&n->file, &n->line);
  n->next = expr_symbol_lines;
  expr_symbol_lines = n;

  return symbolP;
}
