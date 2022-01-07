
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length; } ;


 int ISA_EXT_CORE1 ;
 int ISA_EXT_CORE2 ;
 int ISA_MAX ;
 int ISA_MEP ;
 int cgen_bitset_add (TYPE_1__*,int ) ;
 int cgen_bitset_init (TYPE_1__*,int ) ;
 int cgen_bitset_set (TYPE_1__*,int ) ;
 TYPE_1__ mep_all_core_isas_mask ;

void
init_mep_all_core_isas_mask (void)
{
  if (mep_all_core_isas_mask.length != 0)
    return;
  cgen_bitset_init (& mep_all_core_isas_mask, ISA_MAX);
  cgen_bitset_set (& mep_all_core_isas_mask, ISA_MEP);

  cgen_bitset_add (& mep_all_core_isas_mask, ISA_EXT_CORE1);
  cgen_bitset_add (& mep_all_core_isas_mask, ISA_EXT_CORE2);

}
