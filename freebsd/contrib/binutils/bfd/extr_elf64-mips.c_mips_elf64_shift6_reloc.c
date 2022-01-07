
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_reloc_status_type ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;
struct TYPE_6__ {int addend; TYPE_1__* howto; } ;
typedef TYPE_2__ arelent ;
struct TYPE_5__ {scalar_t__ partial_inplace; } ;


 int _bfd_mips_elf_generic_reloc (int *,TYPE_2__*,int *,void*,int *,int *,char**) ;

__attribute__((used)) static bfd_reloc_status_type
mips_elf64_shift6_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
    void *data, asection *input_section, bfd *output_bfd,
    char **error_message)
{
  if (reloc_entry->howto->partial_inplace)
    {
      reloc_entry->addend = ((reloc_entry->addend & 0x00007c0)
        | (reloc_entry->addend & 0x00000800) >> 9);
    }

  return _bfd_mips_elf_generic_reloc (abfd, reloc_entry, symbol, data,
          input_section, output_bfd,
          error_message);
}
