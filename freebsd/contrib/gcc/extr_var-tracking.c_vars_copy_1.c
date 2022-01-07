
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* variable ;
typedef int htab_t ;
struct TYPE_2__ {int decl; int refcount; } ;


 int INSERT ;
 int VARIABLE_HASH_VAL (int ) ;
 scalar_t__ htab_find_slot_with_hash (int ,int ,int ,int ) ;

__attribute__((used)) static int
vars_copy_1 (void **slot, void *data)
{
  htab_t dst = (htab_t) data;
  variable src, *dstp;

  src = *(variable *) slot;
  src->refcount++;

  dstp = (variable *) htab_find_slot_with_hash (dst, src->decl,
      VARIABLE_HASH_VAL (src->decl),
      INSERT);
  *dstp = src;


  return 1;
}
