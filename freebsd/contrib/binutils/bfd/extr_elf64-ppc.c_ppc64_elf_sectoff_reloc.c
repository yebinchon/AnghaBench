
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bfd_reloc_status_type ;
typedef int bfd ;
struct TYPE_11__ {TYPE_2__* section; } ;
typedef TYPE_3__ asymbol ;
typedef int asection ;
struct TYPE_12__ {int addend; } ;
typedef TYPE_4__ arelent ;
struct TYPE_10__ {TYPE_1__* output_section; } ;
struct TYPE_9__ {scalar_t__ vma; } ;


 int bfd_elf_generic_reloc (int *,TYPE_4__*,TYPE_3__*,void*,int *,int *,char**) ;
 int bfd_reloc_continue ;

__attribute__((used)) static bfd_reloc_status_type
ppc64_elf_sectoff_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
    void *data, asection *input_section,
    bfd *output_bfd, char **error_message)
{



  if (output_bfd != ((void*)0))
    return bfd_elf_generic_reloc (abfd, reloc_entry, symbol, data,
      input_section, output_bfd, error_message);


  reloc_entry->addend -= symbol->section->output_section->vma;
  return bfd_reloc_continue;
}
