
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hashval_t ;
typedef TYPE_1__* decl_t ;
struct TYPE_8__ {scalar_t__ name; } ;
struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_6__ {scalar_t__ mode; } ;


 TYPE_4__* DECL_RESERV (TYPE_1__* const) ;
 TYPE_2__* DECL_UNIT (TYPE_1__* const) ;
 scalar_t__ dm_reserv ;
 scalar_t__ dm_unit ;
 int gcc_assert (int) ;
 int string_hash (scalar_t__) ;

__attribute__((used)) static hashval_t
decl_hash (const void *decl)
{
  const decl_t d = (const decl_t) decl;

  gcc_assert ((d->mode == dm_unit && DECL_UNIT (d)->name)
       || (d->mode == dm_reserv && DECL_RESERV (d)->name));
  return string_hash (d->mode == dm_unit
        ? DECL_UNIT (d)->name : DECL_RESERV (d)->name);
}
