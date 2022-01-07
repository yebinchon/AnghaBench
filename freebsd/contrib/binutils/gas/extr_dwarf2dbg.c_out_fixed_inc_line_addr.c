
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_3__ {scalar_t__ X_add_number; int * X_op_symbol; int * X_add_symbol; void* X_op; } ;
typedef TYPE_1__ expressionS ;


 int DW_LNE_end_sequence ;
 int DW_LNS_advance_line ;
 int DW_LNS_copy ;
 int DW_LNS_extended_op ;
 int DW_LNS_fixed_advance_pc ;
 int INT_MAX ;
 void* O_subtract ;
 int emit_expr (TYPE_1__*,int) ;
 int out_byte (int) ;
 int out_opcode (int ) ;
 int out_sleb128 (int) ;

__attribute__((used)) static void
out_fixed_inc_line_addr (int line_delta, symbolS *to_sym, symbolS *from_sym)
{
  expressionS expr;


  if (line_delta == INT_MAX)
    {
      out_opcode (DW_LNS_fixed_advance_pc);
      expr.X_op = O_subtract;
      expr.X_add_symbol = to_sym;
      expr.X_op_symbol = from_sym;
      expr.X_add_number = 0;
      emit_expr (&expr, 2);

      out_opcode (DW_LNS_extended_op);
      out_byte (1);
      out_opcode (DW_LNE_end_sequence);
      return;
    }

  out_opcode (DW_LNS_advance_line);
  out_sleb128 (line_delta);

  out_opcode (DW_LNS_fixed_advance_pc);
  expr.X_op = O_subtract;
  expr.X_add_symbol = to_sym;
  expr.X_op_symbol = from_sym;
  expr.X_add_number = 0;
  emit_expr (&expr, 2);

  out_opcode (DW_LNS_copy);
}
