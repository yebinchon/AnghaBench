
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* variable ;
typedef int htab_t ;
struct TYPE_5__ {int decl; } ;


 int VARIABLE_HASH_VAL (int ) ;
 int dataflow_set_different_value ;
 TYPE_1__* htab_find_with_hash (int ,int ,int ) ;
 scalar_t__ variable_different_p (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int
dataflow_set_different_1 (void **slot, void *data)
{
  htab_t htab = (htab_t) data;
  variable var1, var2;

  var1 = *(variable *) slot;
  var2 = htab_find_with_hash (htab, var1->decl,
         VARIABLE_HASH_VAL (var1->decl));
  if (!var2)
    {
      dataflow_set_different_value = 1;


      return 0;
    }

  if (variable_different_p (var1, var2, 0))
    {
      dataflow_set_different_value = 1;


      return 0;
    }


  return 1;
}
