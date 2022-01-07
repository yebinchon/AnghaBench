
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_9__ {TYPE_1__* output_section; } ;
typedef TYPE_2__ asection ;
struct TYPE_10__ {int address; } ;
typedef TYPE_3__ arelent ;
struct TYPE_8__ {int owner; } ;


 scalar_t__ TOC_BASE_OFF ;
 scalar_t__ _bfd_get_gp_value (int ) ;
 int bfd_elf_generic_reloc (int *,TYPE_3__*,int *,void*,TYPE_2__*,int *,char**) ;
 int bfd_octets_per_byte (int *) ;
 int bfd_put_64 (int *,scalar_t__,int *) ;
 int bfd_reloc_ok ;
 scalar_t__ ppc64_elf_toc (int ) ;

__attribute__((used)) static bfd_reloc_status_type
ppc64_elf_toc64_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
         void *data, asection *input_section,
         bfd *output_bfd, char **error_message)
{
  bfd_vma TOCstart;
  bfd_size_type octets;




  if (output_bfd != ((void*)0))
    return bfd_elf_generic_reloc (abfd, reloc_entry, symbol, data,
      input_section, output_bfd, error_message);

  TOCstart = _bfd_get_gp_value (input_section->output_section->owner);
  if (TOCstart == 0)
    TOCstart = ppc64_elf_toc (input_section->output_section->owner);

  octets = reloc_entry->address * bfd_octets_per_byte (abfd);
  bfd_put_64 (abfd, TOCstart + TOC_BASE_OFF, (bfd_byte *) data + octets);
  return bfd_reloc_ok;
}
