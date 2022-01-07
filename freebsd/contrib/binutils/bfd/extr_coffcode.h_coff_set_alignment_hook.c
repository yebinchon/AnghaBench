
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct internal_scnhdr {int s_flags; int s_vaddr; int s_paddr; scalar_t__ s_nreloc; } ;
struct TYPE_11__ {int section_count; } ;
typedef TYPE_1__ bfd ;
struct TYPE_12__ {int lineno_count; int reloc_count; } ;
typedef TYPE_2__ asection ;


 int STYP_OVRFLO ;
 int bfd_section_list_remove (TYPE_1__*,TYPE_2__*) ;
 int bfd_section_removed_from_list (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* coff_section_from_bfd_index (TYPE_1__*,int) ;

__attribute__((used)) static void
coff_set_alignment_hook (bfd *abfd, asection *section, void * scnhdr)
{
  struct internal_scnhdr *hdr = (struct internal_scnhdr *) scnhdr;
  asection *real_sec;

  if ((hdr->s_flags & STYP_OVRFLO) == 0)
    return;

  real_sec = coff_section_from_bfd_index (abfd, (int) hdr->s_nreloc);
  if (real_sec == ((void*)0))
    return;

  real_sec->reloc_count = hdr->s_paddr;
  real_sec->lineno_count = hdr->s_vaddr;

  if (!bfd_section_removed_from_list (abfd, section))
    {
      bfd_section_list_remove (abfd, section);
      --abfd->section_count;
    }
}
