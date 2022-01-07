
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fx_r_type; int * fx_subsy; int * fx_addsy; } ;
typedef TYPE_1__ fixS ;


 scalar_t__ BFD_RELOC_VTABLE_ENTRY ;
 scalar_t__ BFD_RELOC_VTABLE_INHERIT ;
 int S_FORCE_RELOC (int *,int ) ;

int
generic_force_reloc (fixS *fix)
{
  if (fix->fx_r_type == BFD_RELOC_VTABLE_INHERIT
      || fix->fx_r_type == BFD_RELOC_VTABLE_ENTRY)
    return 1;

  if (fix->fx_addsy == ((void*)0))
    return 0;

  return S_FORCE_RELOC (fix->fx_addsy, fix->fx_subsy == ((void*)0));
}
