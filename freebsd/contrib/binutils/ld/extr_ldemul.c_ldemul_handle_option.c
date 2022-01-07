
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_2__ {int (* handle_option ) (int) ;} ;


 int FALSE ;
 TYPE_1__* ld_emulation ;
 int stub1 (int) ;

bfd_boolean
ldemul_handle_option (int optc)
{
  if (ld_emulation->handle_option)
    return (*ld_emulation->handle_option) (optc);
  return FALSE;
}
