
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* variable ;
typedef int hashval_t ;
struct TYPE_2__ {int decl; } ;


 int VARIABLE_HASH_VAL (int ) ;

__attribute__((used)) static hashval_t
variable_htab_hash (const void *x)
{
  const variable v = (const variable) x;

  return (VARIABLE_HASH_VAL (v->decl));
}
