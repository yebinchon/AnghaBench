
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alias; int align; int expr; scalar_t__ size; scalar_t__ offset; } ;
typedef TYPE_1__ mem_attrs ;
typedef int hashval_t ;


 int INTVAL (scalar_t__) ;
 scalar_t__ iterative_hash_expr (int ,int ) ;

__attribute__((used)) static hashval_t
mem_attrs_htab_hash (const void *x)
{
  mem_attrs *p = (mem_attrs *) x;

  return (p->alias ^ (p->align * 1000)
   ^ ((p->offset ? INTVAL (p->offset) : 0) * 50000)
   ^ ((p->size ? INTVAL (p->size) : 0) * 2500000)
   ^ (size_t) iterative_hash_expr (p->expr, 0));
}
