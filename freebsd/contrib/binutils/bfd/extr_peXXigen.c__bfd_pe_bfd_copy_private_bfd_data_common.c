
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_12__ {TYPE_3__* xvec; } ;
typedef TYPE_4__ bfd ;
struct TYPE_10__ {TYPE_1__* DataDirectory; } ;
struct TYPE_13__ {TYPE_2__ pe_opthdr; int has_reloc_section; int dll; } ;
struct TYPE_11__ {scalar_t__ flavour; } ;
struct TYPE_9__ {scalar_t__ Size; scalar_t__ VirtualAddress; } ;


 size_t PE_BASE_RELOCATION_TABLE ;
 int TRUE ;
 scalar_t__ bfd_target_coff_flavour ;
 TYPE_5__* pe_data (TYPE_4__*) ;

bfd_boolean
_bfd_XX_bfd_copy_private_bfd_data_common (bfd * ibfd, bfd * obfd)
{

  if (ibfd->xvec->flavour != bfd_target_coff_flavour
      || obfd->xvec->flavour != bfd_target_coff_flavour)
    return TRUE;

  pe_data (obfd)->pe_opthdr = pe_data (ibfd)->pe_opthdr;
  pe_data (obfd)->dll = pe_data (ibfd)->dll;



  if (! pe_data (obfd)->has_reloc_section)
    {
      pe_data (obfd)->pe_opthdr.DataDirectory[PE_BASE_RELOCATION_TABLE].VirtualAddress = 0;
      pe_data (obfd)->pe_opthdr.DataDirectory[PE_BASE_RELOCATION_TABLE].Size = 0;
    }
  return TRUE;
}
