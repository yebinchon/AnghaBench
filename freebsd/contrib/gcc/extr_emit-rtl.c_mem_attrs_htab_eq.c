
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ alias; scalar_t__ offset; scalar_t__ size; scalar_t__ align; scalar_t__ expr; } ;
typedef TYPE_1__ mem_attrs ;


 scalar_t__ NULL_TREE ;
 scalar_t__ operand_equal_p (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int
mem_attrs_htab_eq (const void *x, const void *y)
{
  mem_attrs *p = (mem_attrs *) x;
  mem_attrs *q = (mem_attrs *) y;

  return (p->alias == q->alias && p->offset == q->offset
   && p->size == q->size && p->align == q->align
   && (p->expr == q->expr
       || (p->expr != NULL_TREE && q->expr != NULL_TREE
    && operand_equal_p (p->expr, q->expr, 0))));
}
