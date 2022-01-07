
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* operand_entry_t ;
struct TYPE_2__ {scalar_t__ op; } ;



__attribute__((used)) static int
operand_entry_eq (const void *p1, const void *p2)
{
  const operand_entry_t vr1 = (operand_entry_t) p1;
  const operand_entry_t vr2 = (operand_entry_t) p2;
  return vr1->op == vr2->op;
}
