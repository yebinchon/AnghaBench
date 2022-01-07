
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct elf_backend_data {int (* elf_backend_post_process_headers ) (TYPE_1__*,struct bfd_link_info*) ;int (* elf_backend_begin_write_processing ) (TYPE_1__*,struct bfd_link_info*) ;} ;
struct bfd_strtab_hash {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef int file_ptr ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_19__ {int flags; scalar_t__ output_has_begun; } ;
typedef TYPE_1__ bfd ;
struct TYPE_20__ {scalar_t__ sh_size; int sh_addralign; int sh_offset; scalar_t__ sh_info; scalar_t__ sh_link; scalar_t__ sh_entsize; scalar_t__ sh_addr; scalar_t__ sh_flags; int sh_type; } ;
struct TYPE_21__ {int next_file_pos; TYPE_2__ strtab_hdr; TYPE_2__ symtab_shndx_hdr; TYPE_2__ symtab_hdr; TYPE_2__ shstrtab_hdr; } ;
typedef TYPE_2__ Elf_Internal_Shdr ;


 int DYNAMIC ;
 int EXEC_P ;
 scalar_t__ FALSE ;
 int SEEK_SET ;
 int SHT_STRTAB ;
 scalar_t__ TRUE ;
 int _bfd_elf_assign_file_position_for_section (TYPE_2__*,int ,scalar_t__) ;
 scalar_t__ _bfd_elf_strtab_size (int ) ;
 int _bfd_stringtab_emit (TYPE_1__*,struct bfd_strtab_hash*) ;
 int _bfd_stringtab_free (struct bfd_strtab_hash*) ;
 int assign_file_positions_except_relocs (TYPE_1__*,struct bfd_link_info*) ;
 int assign_section_numbers (TYPE_1__*,struct bfd_link_info*) ;
 int bfd_elf_set_group_contents ;
 scalar_t__ bfd_get_symcount (TYPE_1__*) ;
 int bfd_map_over_sections (TYPE_1__*,int ,scalar_t__*) ;
 scalar_t__ bfd_seek (TYPE_1__*,int ,int ) ;
 int elf_fake_sections ;
 int elf_shstrtab (TYPE_1__*) ;
 TYPE_8__* elf_tdata (TYPE_1__*) ;
 struct elf_backend_data* get_elf_backend_data (TYPE_1__*) ;
 int prep_headers (TYPE_1__*) ;
 int stub1 (TYPE_1__*,struct bfd_link_info*) ;
 int stub2 (TYPE_1__*,struct bfd_link_info*) ;
 int swap_out_syms (TYPE_1__*,struct bfd_strtab_hash**,int) ;

bfd_boolean
_bfd_elf_compute_section_file_positions (bfd *abfd,
      struct bfd_link_info *link_info)
{
  const struct elf_backend_data *bed = get_elf_backend_data (abfd);
  bfd_boolean failed;
  struct bfd_strtab_hash *strtab = ((void*)0);
  Elf_Internal_Shdr *shstrtab_hdr;

  if (abfd->output_has_begun)
    return TRUE;


  if (bed->elf_backend_begin_write_processing)
    (*bed->elf_backend_begin_write_processing) (abfd, link_info);

  if (! prep_headers (abfd))
    return FALSE;


  if (bed->elf_backend_post_process_headers)
    (*bed->elf_backend_post_process_headers) (abfd, link_info);

  failed = FALSE;
  bfd_map_over_sections (abfd, elf_fake_sections, &failed);
  if (failed)
    return FALSE;

  if (!assign_section_numbers (abfd, link_info))
    return FALSE;


  if (link_info == ((void*)0) && bfd_get_symcount (abfd) > 0)
    {

      int relocatable_p = ! (abfd->flags & (EXEC_P | DYNAMIC));

      if (! swap_out_syms (abfd, &strtab, relocatable_p))
 return FALSE;
    }

  if (link_info == ((void*)0))
    {
      bfd_map_over_sections (abfd, bfd_elf_set_group_contents, &failed);
      if (failed)
 return FALSE;
    }

  shstrtab_hdr = &elf_tdata (abfd)->shstrtab_hdr;

  shstrtab_hdr->sh_type = SHT_STRTAB;
  shstrtab_hdr->sh_flags = 0;
  shstrtab_hdr->sh_addr = 0;
  shstrtab_hdr->sh_size = _bfd_elf_strtab_size (elf_shstrtab (abfd));
  shstrtab_hdr->sh_entsize = 0;
  shstrtab_hdr->sh_link = 0;
  shstrtab_hdr->sh_info = 0;

  shstrtab_hdr->sh_addralign = 1;

  if (!assign_file_positions_except_relocs (abfd, link_info))
    return FALSE;

  if (link_info == ((void*)0) && bfd_get_symcount (abfd) > 0)
    {
      file_ptr off;
      Elf_Internal_Shdr *hdr;

      off = elf_tdata (abfd)->next_file_pos;

      hdr = &elf_tdata (abfd)->symtab_hdr;
      off = _bfd_elf_assign_file_position_for_section (hdr, off, TRUE);

      hdr = &elf_tdata (abfd)->symtab_shndx_hdr;
      if (hdr->sh_size != 0)
 off = _bfd_elf_assign_file_position_for_section (hdr, off, TRUE);

      hdr = &elf_tdata (abfd)->strtab_hdr;
      off = _bfd_elf_assign_file_position_for_section (hdr, off, TRUE);

      elf_tdata (abfd)->next_file_pos = off;



      if (bfd_seek (abfd, hdr->sh_offset, SEEK_SET) != 0
   || ! _bfd_stringtab_emit (abfd, strtab))
 return FALSE;
      _bfd_stringtab_free (strtab);
    }

  abfd->output_has_begun = TRUE;

  return TRUE;
}
