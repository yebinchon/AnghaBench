
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_6__ {int * X_add_symbol; scalar_t__ X_add_number; int X_op_symbol; int X_op; } ;
typedef TYPE_2__ expressionS ;
struct TYPE_5__ {int sym; } ;
struct TYPE_7__ {TYPE_1__ u; } ;


 size_t FUNC_SEC_RELATIVE ;
 int O_pseudo_fixup ;
 int emit_expr (TYPE_2__*,unsigned int) ;
 TYPE_3__* pseudo_func ;

void
ia64_dwarf2_emit_offset (symbolS *symbol, unsigned int size)
{
  expressionS expr;

  expr.X_op = O_pseudo_fixup;
  expr.X_op_symbol = pseudo_func[FUNC_SEC_RELATIVE].u.sym;
  expr.X_add_number = 0;
  expr.X_add_symbol = symbol;
  emit_expr (&expr, size);
}
