
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* htab_t ;
typedef enum insert_option { ____Placeholder_insert_option } insert_option ;
struct TYPE_4__ {int (* hash_f ) (int const) ;} ;
typedef int PTR ;


 int * htab_find_slot_with_hash (TYPE_1__*,int const,int ,int) ;
 int stub1 (int const) ;

PTR *
htab_find_slot (htab_t htab, const PTR element, enum insert_option insert)
{
  return htab_find_slot_with_hash (htab, element, (*htab->hash_f) (element),
       insert);
}
