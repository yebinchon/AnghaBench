
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd_reloc_status_type ;
typedef int bfd ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ asymbol ;
typedef int asection ;
typedef int arelent ;


 int BSF_GLOBAL ;
 int BSF_WEAK ;
 int bfd_elf_generic_reloc (int *,int *,TYPE_1__*,void*,int *,int *,char**) ;
 int bfd_get_section (TYPE_1__*) ;
 scalar_t__ bfd_is_com_section (int ) ;
 scalar_t__ bfd_is_und_section (int ) ;
 int score_elf_hi16_reloc (int *,int *,TYPE_1__*,void*,int *,int *,char**) ;

__attribute__((used)) static bfd_reloc_status_type
score_elf_got15_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
         void *data, asection *input_section,
         bfd *output_bfd, char **error_message)
{
  if ((symbol->flags & (BSF_GLOBAL | BSF_WEAK)) != 0
      || bfd_is_und_section (bfd_get_section (symbol))
      || bfd_is_com_section (bfd_get_section (symbol)))

    return bfd_elf_generic_reloc (abfd, reloc_entry, symbol, data,
      input_section, output_bfd,
      error_message);

  return score_elf_hi16_reloc (abfd, reloc_entry, symbol, data,
          input_section, output_bfd, error_message);
}
