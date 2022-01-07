
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* htab_t ;
struct TYPE_4__ {int (* hash_f ) (int ) ;} ;
typedef int PTR ;


 int htab_remove_elt_with_hash (TYPE_1__*,int ,int ) ;
 int stub1 (int ) ;

void
htab_remove_elt (htab_t htab, PTR element)
{
  htab_remove_elt_with_hash (htab, element, (*htab->hash_f) (element));
}
