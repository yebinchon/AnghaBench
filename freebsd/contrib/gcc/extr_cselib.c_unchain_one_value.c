
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr_list; } ;
typedef TYPE_1__ cselib_val ;


 int cselib_val_pool ;
 int pool_free (int ,TYPE_1__*) ;
 int unchain_one_elt_list (scalar_t__*) ;

__attribute__((used)) static void
unchain_one_value (cselib_val *v)
{
  while (v->addr_list)
    unchain_one_elt_list (&v->addr_list);

  pool_free (cselib_val_pool, v);
}
