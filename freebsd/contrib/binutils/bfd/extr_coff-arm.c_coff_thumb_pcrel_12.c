
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_reloc_status_type ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;
typedef int arelent ;


 int b12 ;
 int coff_thumb_pcrel_common (int *,int *,int *,void*,int *,int *,char**,int ) ;

__attribute__((used)) static bfd_reloc_status_type
coff_thumb_pcrel_12 (bfd *abfd,
       arelent *reloc_entry,
       asymbol *symbol,
       void * data,
       asection *input_section,
       bfd *output_bfd,
       char **error_message)
{
  return coff_thumb_pcrel_common (abfd, reloc_entry, symbol, data,
                                  input_section, output_bfd, error_message,
      b12);
}
