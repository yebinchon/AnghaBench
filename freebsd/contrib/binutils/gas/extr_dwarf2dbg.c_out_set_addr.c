
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_3__ {scalar_t__ X_add_number; int * X_add_symbol; int X_op; } ;
typedef TYPE_1__ expressionS ;


 int DW_LNE_set_address ;
 int DW_LNS_extended_op ;
 int O_symbol ;
 int emit_expr (TYPE_1__*,scalar_t__) ;
 int out_opcode (int ) ;
 int out_uleb128 (scalar_t__) ;
 scalar_t__ sizeof_address ;

__attribute__((used)) static void
out_set_addr (symbolS *sym)
{
  expressionS expr;

  out_opcode (DW_LNS_extended_op);
  out_uleb128 (sizeof_address + 1);

  out_opcode (DW_LNE_set_address);
  expr.X_op = O_symbol;
  expr.X_add_symbol = sym;
  expr.X_add_number = 0;
  emit_expr (&expr, sizeof_address);
}
