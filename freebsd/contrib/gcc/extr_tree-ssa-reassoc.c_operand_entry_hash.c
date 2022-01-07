
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* operand_entry_t ;
typedef int hashval_t ;
struct TYPE_2__ {int op; } ;


 int iterative_hash_expr (int ,int ) ;

__attribute__((used)) static hashval_t
operand_entry_hash (const void *p)
{
  const operand_entry_t vr = (operand_entry_t) p;
  return iterative_hash_expr (vr->op, 0);
}
