
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef scalar_t__ bfd_boolean ;
struct TYPE_19__ {scalar_t__ xvec; TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_20__ {scalar_t__ segment_mark; scalar_t__ flags; scalar_t__ lma; scalar_t__ vma; scalar_t__ size; scalar_t__ rawsize; scalar_t__ alignment_power; struct TYPE_20__* next; struct TYPE_20__* output_section; } ;
typedef TYPE_2__ asection ;
struct TYPE_23__ {int this_hdr; } ;
struct TYPE_22__ {TYPE_3__* phdr; } ;
struct TYPE_21__ {scalar_t__ p_paddr; scalar_t__ p_memsz; scalar_t__ p_type; } ;
struct TYPE_18__ {unsigned int e_phnum; } ;
typedef int Elf_Internal_Shdr ;
typedef TYPE_3__ Elf_Internal_Phdr ;


 scalar_t__ ELF_IS_SECTION_IN_SEGMENT_FILE (int *,TYPE_3__*) ;
 scalar_t__ FALSE ;
 scalar_t__ PT_DYNAMIC ;
 scalar_t__ PT_INTERP ;
 scalar_t__ TRUE ;
 scalar_t__ bfd_get_flavour (TYPE_1__*) ;
 scalar_t__ bfd_target_elf_flavour ;
 scalar_t__ copy_elf_program_header (TYPE_1__*,TYPE_1__*) ;
 TYPE_10__* elf_elfheader (TYPE_1__*) ;
 TYPE_8__* elf_section_data (TYPE_2__*) ;
 TYPE_6__* elf_tdata (TYPE_1__*) ;
 scalar_t__ rewrite_elf_program_header (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
copy_private_bfd_data (bfd *ibfd, bfd *obfd)
{
  if (bfd_get_flavour (ibfd) != bfd_target_elf_flavour
      || bfd_get_flavour (obfd) != bfd_target_elf_flavour)
    return TRUE;

  if (elf_tdata (ibfd)->phdr == ((void*)0))
    return TRUE;

  if (ibfd->xvec == obfd->xvec)
    {


      Elf_Internal_Phdr *segment;
      asection *section, *osec;
      unsigned int i, num_segments;
      Elf_Internal_Shdr *this_hdr;


      for (section = obfd->sections; section != ((void*)0);
    section = section->next)
 section->segment_mark = FALSE;

      num_segments = elf_elfheader (ibfd)->e_phnum;
      for (i = 0, segment = elf_tdata (ibfd)->phdr;
    i < num_segments;
    i++, segment++)
 {




   if (segment->p_paddr == 0
       && segment->p_memsz == 0
       && (segment->p_type == PT_INTERP || segment->p_type == PT_DYNAMIC))
     goto rewrite;

   for (section = ibfd->sections;
        section != ((void*)0); section = section->next)
     {


       osec = section->output_section;
       if (osec)
  osec->segment_mark = TRUE;


       this_hdr = &(elf_section_data(section)->this_hdr);
       if (ELF_IS_SECTION_IN_SEGMENT_FILE (this_hdr, segment))
  {


    if (osec == ((void*)0)
        || section->flags != osec->flags
        || section->lma != osec->lma
        || section->vma != osec->vma
        || section->size != osec->size
        || section->rawsize != osec->rawsize
        || section->alignment_power != osec->alignment_power)
      goto rewrite;
  }
     }
 }



      for (section = obfd->sections; section != ((void*)0);
    section = section->next)
 {
   if (section->segment_mark == FALSE)
     goto rewrite;
   else
     section->segment_mark = FALSE;
 }

      return copy_elf_program_header (ibfd, obfd);
    }

rewrite:
  return rewrite_elf_program_header (ibfd, obfd);
}
