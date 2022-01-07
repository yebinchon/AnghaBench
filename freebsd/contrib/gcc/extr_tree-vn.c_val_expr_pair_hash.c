
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* val_expr_pair_t ;
typedef int hashval_t ;
struct TYPE_2__ {int hashcode; } ;



__attribute__((used)) static hashval_t
val_expr_pair_hash (const void *p)
{
  const val_expr_pair_t ve = (val_expr_pair_t) p;
  return ve->hashcode;
}
