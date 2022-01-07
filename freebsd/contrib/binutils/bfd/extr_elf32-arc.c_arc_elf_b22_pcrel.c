
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_reloc_status_type ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;
struct TYPE_4__ {scalar_t__ address; int addend; } ;
typedef TYPE_1__ arelent ;


 int bfd_elf_generic_reloc (int *,TYPE_1__*,int *,void*,int *,int *,char**) ;

__attribute__((used)) static bfd_reloc_status_type
arc_elf_b22_pcrel (bfd * abfd,
     arelent * reloc_entry,
     asymbol * symbol,
     void * data,
     asection * input_section,
     bfd * output_bfd,
     char ** error_message)
{





  if (output_bfd == ((void*)0))
    reloc_entry->addend -= reloc_entry->address;


  return bfd_elf_generic_reloc (abfd, reloc_entry, symbol, data,
    input_section, output_bfd, error_message);
}
