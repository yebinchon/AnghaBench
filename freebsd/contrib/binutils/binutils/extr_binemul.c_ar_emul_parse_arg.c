
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_2__ {int (* ar_parse_arg ) (char*) ;} ;


 int FALSE ;
 TYPE_1__ bin_dummy_emulation ;
 int stub1 (char*) ;

bfd_boolean
ar_emul_parse_arg (char *arg)
{
  if (bin_dummy_emulation.ar_parse_arg)
    return bin_dummy_emulation.ar_parse_arg (arg);

  return FALSE;
}
