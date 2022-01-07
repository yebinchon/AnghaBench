
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ifld_table; } ;
typedef TYPE_1__ CGEN_CPU_TABLE ;


 int * mep_cgen_ifld_table ;

__attribute__((used)) static void
build_ifield_table (CGEN_CPU_TABLE *cd)
{
  cd->ifld_table = & mep_cgen_ifld_table[0];
}
