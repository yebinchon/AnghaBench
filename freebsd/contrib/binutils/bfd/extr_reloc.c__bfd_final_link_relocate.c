
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pcrel_offset; scalar_t__ pc_relative; } ;
typedef TYPE_2__ reloc_howto_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_10__ {scalar_t__ output_offset; TYPE_1__* output_section; } ;
typedef TYPE_3__ asection ;
struct TYPE_8__ {scalar_t__ vma; } ;


 int _bfd_relocate_contents (TYPE_2__*,int *,scalar_t__,int *) ;
 scalar_t__ bfd_get_section_limit (int *,TYPE_3__*) ;
 int bfd_reloc_outofrange ;

bfd_reloc_status_type
_bfd_final_link_relocate (reloc_howto_type *howto,
     bfd *input_bfd,
     asection *input_section,
     bfd_byte *contents,
     bfd_vma address,
     bfd_vma value,
     bfd_vma addend)
{
  bfd_vma relocation;


  if (address > bfd_get_section_limit (input_bfd, input_section))
    return bfd_reloc_outofrange;





  relocation = value + addend;
  if (howto->pc_relative)
    {
      relocation -= (input_section->output_section->vma
       + input_section->output_offset);
      if (howto->pcrel_offset)
 relocation -= address;
    }

  return _bfd_relocate_contents (howto, input_bfd, relocation,
     contents + address);
}
