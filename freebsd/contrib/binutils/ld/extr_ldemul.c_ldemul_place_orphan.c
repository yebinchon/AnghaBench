
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int asection ;
struct TYPE_2__ {int (* place_orphan ) (int *) ;} ;


 int FALSE ;
 TYPE_1__* ld_emulation ;
 int stub1 (int *) ;

bfd_boolean
ldemul_place_orphan (asection *s)
{
  if (ld_emulation->place_orphan)
    return (*ld_emulation->place_orphan) (s);
  return FALSE;
}
