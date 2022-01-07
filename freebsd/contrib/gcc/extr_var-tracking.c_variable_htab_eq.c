
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* variable ;
typedef int tree ;
struct TYPE_2__ {int const decl; } ;


 scalar_t__ VARIABLE_HASH_VAL (int const) ;

__attribute__((used)) static int
variable_htab_eq (const void *x, const void *y)
{
  const variable v = (const variable) x;
  const tree decl = (const tree) y;

  return (VARIABLE_HASH_VAL (v->decl) == VARIABLE_HASH_VAL (decl));
}
