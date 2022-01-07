
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
struct TYPE_6__ {TYPE_1__* howto; } ;
typedef TYPE_2__ arelent ;
struct TYPE_5__ {char* name; } ;


 int bfd_elf_generic_reloc (int *,TYPE_2__*,int *,void*,int *,int *,char**) ;
 int bfd_reloc_dangerous ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static bfd_reloc_status_type
ppc64_elf_unhandled_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
      void *data, asection *input_section,
      bfd *output_bfd, char **error_message)
{



  if (output_bfd != ((void*)0))
    return bfd_elf_generic_reloc (abfd, reloc_entry, symbol, data,
      input_section, output_bfd, error_message);

  if (error_message != ((void*)0))
    {
      static char buf[60];
      sprintf (buf, "generic linker can't handle %s",
        reloc_entry->howto->name);
      *error_message = buf;
    }
  return bfd_reloc_dangerous;
}
