
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct read_pe_section_data {scalar_t__ rva_start; scalar_t__ vma_offset; } ;
typedef int bfd ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ asection ;


 int PE_SECTION_INDEX_INVALID ;
 scalar_t__ bfd_get_section_vma (int *,TYPE_1__*) ;
 int read_pe_section_index (int ) ;

__attribute__((used)) static void
get_section_vmas (bfd *abfd, asection *sectp, void *context)
{
  struct read_pe_section_data *sections = context;
  int sectix = read_pe_section_index (sectp->name);

  if (sectix != PE_SECTION_INDEX_INVALID)
    {



      sections[sectix].vma_offset
 = bfd_get_section_vma (abfd, sectp) - sections[sectix].rva_start;
    }
}
