
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int ri_gp_value; int * ri_cprmask; int ri_gprmask; } ;
struct TYPE_5__ {int ri_gp_value; int * ri_cprmask; int ri_gprmask; } ;
typedef TYPE_1__ Elf32_RegInfo ;
typedef TYPE_2__ Elf32_External_RegInfo ;


 int H_PUT_32 (int *,int ,int ) ;

void
bfd_mips_elf32_swap_reginfo_out (bfd *abfd, const Elf32_RegInfo *in,
     Elf32_External_RegInfo *ex)
{
  H_PUT_32 (abfd, in->ri_gprmask, ex->ri_gprmask);
  H_PUT_32 (abfd, in->ri_cprmask[0], ex->ri_cprmask[0]);
  H_PUT_32 (abfd, in->ri_cprmask[1], ex->ri_cprmask[1]);
  H_PUT_32 (abfd, in->ri_cprmask[2], ex->ri_cprmask[2]);
  H_PUT_32 (abfd, in->ri_cprmask[3], ex->ri_cprmask[3]);
  H_PUT_32 (abfd, in->ri_gp_value, ex->ri_gp_value);
}
