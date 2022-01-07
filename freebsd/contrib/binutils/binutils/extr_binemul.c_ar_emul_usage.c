
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ar_usage ) (int *) ;} ;
typedef int FILE ;


 TYPE_1__ bin_dummy_emulation ;
 int stub1 (int *) ;

void
ar_emul_usage (FILE *fp)
{
  if (bin_dummy_emulation.ar_usage)
    bin_dummy_emulation.ar_usage (fp);
}
