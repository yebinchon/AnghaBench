
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ decl; scalar_t__ offset; } ;
typedef TYPE_1__ reg_attrs ;



__attribute__((used)) static int
reg_attrs_htab_eq (const void *x, const void *y)
{
  reg_attrs *p = (reg_attrs *) x;
  reg_attrs *q = (reg_attrs *) y;

  return (p->decl == q->decl && p->offset == q->offset);
}
