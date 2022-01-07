
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* htab_t ;
typedef int hashval_t ;
struct TYPE_4__ {int n_deleted; int (* del_f ) (scalar_t__) ;} ;
typedef scalar_t__ PTR ;


 scalar_t__ HTAB_DELETED_ENTRY ;
 scalar_t__ HTAB_EMPTY_ENTRY ;
 int NO_INSERT ;
 scalar_t__* htab_find_slot_with_hash (TYPE_1__*,scalar_t__,int ,int ) ;
 int stub1 (scalar_t__) ;

void
htab_remove_elt_with_hash (htab_t htab, PTR element, hashval_t hash)
{
  PTR *slot;

  slot = htab_find_slot_with_hash (htab, element, hash, NO_INSERT);
  if (*slot == HTAB_EMPTY_ENTRY)
    return;

  if (htab->del_f)
    (*htab->del_f) (*slot);

  *slot = HTAB_DELETED_ENTRY;
  htab->n_deleted++;
}
