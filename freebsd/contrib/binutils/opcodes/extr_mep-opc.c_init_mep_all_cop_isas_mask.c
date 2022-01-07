
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; } ;


 int ISA_EXT_COP2_16 ;
 int ISA_EXT_COP2_32 ;
 int ISA_EXT_COP2_48 ;
 int ISA_EXT_COP2_64 ;
 int ISA_MAX ;
 int cgen_bitset_add (TYPE_1__*,int ) ;
 int cgen_bitset_init (TYPE_1__*,int ) ;
 TYPE_1__ mep_all_cop_isas_mask ;

void
init_mep_all_cop_isas_mask (void)
{
  if (mep_all_cop_isas_mask.length != 0)
    return;
  cgen_bitset_init (& mep_all_cop_isas_mask, ISA_MAX);

  cgen_bitset_add (& mep_all_cop_isas_mask, ISA_EXT_COP2_16);
  cgen_bitset_add (& mep_all_cop_isas_mask, ISA_EXT_COP2_32);
  cgen_bitset_add (& mep_all_cop_isas_mask, ISA_EXT_COP2_48);
  cgen_bitset_add (& mep_all_cop_isas_mask, ISA_EXT_COP2_64);

}
