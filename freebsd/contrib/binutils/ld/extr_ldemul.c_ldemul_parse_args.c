
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_2__ {int (* parse_args ) (int,char**) ;} ;


 int FALSE ;
 TYPE_1__* ld_emulation ;
 int stub1 (int,char**) ;

bfd_boolean
ldemul_parse_args (int argc, char **argv)
{

  if (ld_emulation->parse_args)
    return (*ld_emulation->parse_args) (argc, argv);
  return FALSE;
}
