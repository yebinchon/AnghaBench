
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ valueT ;
struct TYPE_5__ {scalar_t__ X_op; int X_add_symbol; } ;
typedef TYPE_1__ expressionS ;
struct TYPE_6__ {scalar_t__ mips16; } ;


 int FAKE_LABEL_NAME ;
 scalar_t__ O_symbol ;
 int S_GET_NAME (int ) ;
 scalar_t__ S_GET_SEGMENT (int ) ;
 scalar_t__ S_GET_VALUE (int ) ;
 int S_SET_VALUE (int ,scalar_t__) ;
 char* expr_end ;
 int expression (TYPE_1__*) ;
 scalar_t__ frag_now ;
 scalar_t__ frag_now_fix () ;
 char* input_line_pointer ;
 TYPE_3__ mips_opts ;
 scalar_t__ now_seg ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ symbol_constant_p (int ) ;
 scalar_t__ symbol_get_frag (int ) ;

__attribute__((used)) static void
my_getExpression (expressionS *ep, char *str)
{
  char *save_in;
  valueT val;

  save_in = input_line_pointer;
  input_line_pointer = str;
  expression (ep);
  expr_end = input_line_pointer;
  input_line_pointer = save_in;





  if (mips_opts.mips16
      && ep->X_op == O_symbol
      && strcmp (S_GET_NAME (ep->X_add_symbol), FAKE_LABEL_NAME) == 0
      && S_GET_SEGMENT (ep->X_add_symbol) == now_seg
      && symbol_get_frag (ep->X_add_symbol) == frag_now
      && symbol_constant_p (ep->X_add_symbol)
      && (val = S_GET_VALUE (ep->X_add_symbol)) == frag_now_fix ())
    S_SET_VALUE (ep->X_add_symbol, val + 1);
}
