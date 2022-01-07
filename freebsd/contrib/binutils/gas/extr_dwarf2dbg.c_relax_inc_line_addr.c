
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_3__ {scalar_t__ X_add_number; int * X_op_symbol; int * X_add_symbol; int X_op; } ;
typedef TYPE_1__ expressionS ;


 int DWARF2_LINE_MIN_INSN_LENGTH ;
 int O_subtract ;
 int frag_var (int ,int,int,int,int ,int,int *) ;
 int make_expr_symbol (TYPE_1__*) ;
 int rs_dwarf2dbg ;
 int size_inc_line_addr (int,int ) ;

__attribute__((used)) static void
relax_inc_line_addr (int line_delta, symbolS *to_sym, symbolS *from_sym)
{
  expressionS expr;
  int max_chars;

  expr.X_op = O_subtract;
  expr.X_add_symbol = to_sym;
  expr.X_op_symbol = from_sym;
  expr.X_add_number = 0;



  max_chars = size_inc_line_addr (line_delta, -DWARF2_LINE_MIN_INSN_LENGTH);

  frag_var (rs_dwarf2dbg, max_chars, max_chars, 1,
     make_expr_symbol (&expr), line_delta, ((void*)0));
}
