
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; scalar_t__ decl; } ;
typedef TYPE_1__ reg_attrs ;
typedef int hashval_t ;



__attribute__((used)) static hashval_t
reg_attrs_htab_hash (const void *x)
{
  reg_attrs *p = (reg_attrs *) x;

  return ((p->offset * 1000) ^ (long) p->decl);
}
