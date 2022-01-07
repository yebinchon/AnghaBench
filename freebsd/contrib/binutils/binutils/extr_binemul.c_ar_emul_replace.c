
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int (* ar_replace ) (int **,char*,int ) ;} ;


 int FALSE ;
 TYPE_1__ bin_dummy_emulation ;
 int stub1 (int **,char*,int ) ;

bfd_boolean
ar_emul_replace (bfd **after_bfd, char *file_name, bfd_boolean verbose)
{
  if (bin_dummy_emulation.ar_replace)
    return bin_dummy_emulation.ar_replace (after_bfd, file_name, verbose);

  return FALSE;
}
