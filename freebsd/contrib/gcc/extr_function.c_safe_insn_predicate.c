
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_operand_data {int (* predicate ) (int ,int ) ;int mode; } ;
typedef int rtx ;
struct TYPE_2__ {struct insn_operand_data* operand; } ;


 TYPE_1__* insn_data ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int
safe_insn_predicate (int code, int operand, rtx x)
{
  const struct insn_operand_data *op_data;

  if (code < 0)
    return 1;

  op_data = &insn_data[code].operand[operand];
  if (op_data->predicate == ((void*)0))
    return 1;

  return op_data->predicate (x, op_data->mode);
}
