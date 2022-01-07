
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fx_addsy; scalar_t__ fx_offset; TYPE_1__* fx_next; } ;
typedef TYPE_2__ fixS ;
typedef int bfd_boolean ;
struct TYPE_4__ {scalar_t__ fx_r_type; scalar_t__ fx_addsy; scalar_t__ fx_offset; } ;


 scalar_t__ BFD_RELOC_LO16 ;
 scalar_t__ BFD_RELOC_MIPS16_LO16 ;

__attribute__((used)) static inline bfd_boolean
fixup_has_matching_lo_p (fixS *fixp)
{
  return (fixp->fx_next != ((void*)0)
   && (fixp->fx_next->fx_r_type == BFD_RELOC_LO16
      || fixp->fx_next->fx_r_type == BFD_RELOC_MIPS16_LO16)
   && fixp->fx_addsy == fixp->fx_next->fx_addsy
   && fixp->fx_offset == fixp->fx_next->fx_offset);
}
