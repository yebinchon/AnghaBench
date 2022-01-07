
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_3__ {scalar_t__ X_add_number; int * X_add_symbol; int X_op; } ;
typedef TYPE_1__ expressionS ;


 int O_symbol ;
 int emit_expr (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void
generic_dwarf2_emit_offset (symbolS *symbol, unsigned int size)
{
  expressionS expr;

  expr.X_op = O_symbol;
  expr.X_add_symbol = symbol;
  expr.X_add_number = 0;
  emit_expr (&expr, size);
}
