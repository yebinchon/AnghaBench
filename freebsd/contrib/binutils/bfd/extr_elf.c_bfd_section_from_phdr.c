
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct elf_backend_data {int (* elf_backend_section_from_phdr ) (int *,TYPE_1__*,int,char*) ;} ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {int p_type; int p_filesz; int p_offset; } ;
typedef TYPE_1__ Elf_Internal_Phdr ;


 int FALSE ;
 int TRUE ;
 int _bfd_elf_make_section_from_phdr (int *,TYPE_1__*,int,char*) ;
 int elfcore_read_notes (int *,int ,int ) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (int *,TYPE_1__*,int,char*) ;

bfd_boolean
bfd_section_from_phdr (bfd *abfd, Elf_Internal_Phdr *hdr, int index)
{
  const struct elf_backend_data *bed;

  switch (hdr->p_type)
    {
    case 130:
      return _bfd_elf_make_section_from_phdr (abfd, hdr, index, "null");

    case 132:
      return _bfd_elf_make_section_from_phdr (abfd, hdr, index, "load");

    case 137:
      return _bfd_elf_make_section_from_phdr (abfd, hdr, index, "dynamic");

    case 133:
      return _bfd_elf_make_section_from_phdr (abfd, hdr, index, "interp");

    case 131:
      if (! _bfd_elf_make_section_from_phdr (abfd, hdr, index, "note"))
 return FALSE;
      if (! elfcore_read_notes (abfd, hdr->p_offset, hdr->p_filesz))
 return FALSE;
      return TRUE;

    case 128:
      return _bfd_elf_make_section_from_phdr (abfd, hdr, index, "shlib");

    case 129:
      return _bfd_elf_make_section_from_phdr (abfd, hdr, index, "phdr");

    case 136:
      return _bfd_elf_make_section_from_phdr (abfd, hdr, index,
           "eh_frame_hdr");

    case 134:
      return _bfd_elf_make_section_from_phdr (abfd, hdr, index, "stack");

    case 135:
      return _bfd_elf_make_section_from_phdr (abfd, hdr, index, "relro");

    default:

      bed = get_elf_backend_data (abfd);
      return bed->elf_backend_section_from_phdr (abfd, hdr, index, "proc");
    }
}
