
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bt_name; } ;
typedef TYPE_1__ Elftc_Bfd_Target ;


 TYPE_1__* _libelftc_targets ;
 int strcmp (char const*,scalar_t__) ;

Elftc_Bfd_Target *
elftc_bfd_find_target(const char *tgt_name)
{
 Elftc_Bfd_Target *tgt;

 for (tgt = _libelftc_targets; tgt->bt_name; tgt++)
  if (!strcmp(tgt_name, tgt->bt_name))
   return (tgt);

 return (((void*)0));
}
