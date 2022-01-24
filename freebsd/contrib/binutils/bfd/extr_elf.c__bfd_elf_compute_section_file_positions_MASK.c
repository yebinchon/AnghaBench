#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {int /*<<< orphan*/  (* elf_backend_post_process_headers ) (TYPE_1__*,struct bfd_link_info*) ;int /*<<< orphan*/  (* elf_backend_begin_write_processing ) (TYPE_1__*,struct bfd_link_info*) ;} ;
struct bfd_strtab_hash {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_19__ {int flags; scalar_t__ output_has_begun; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_20__ {scalar_t__ sh_size; int sh_addralign; int /*<<< orphan*/  sh_offset; scalar_t__ sh_info; scalar_t__ sh_link; scalar_t__ sh_entsize; scalar_t__ sh_addr; scalar_t__ sh_flags; int /*<<< orphan*/  sh_type; } ;
struct TYPE_21__ {int /*<<< orphan*/  next_file_pos; TYPE_2__ strtab_hdr; TYPE_2__ symtab_shndx_hdr; TYPE_2__ symtab_hdr; TYPE_2__ shstrtab_hdr; } ;
typedef  TYPE_2__ Elf_Internal_Shdr ;

/* Variables and functions */
 int DYNAMIC ; 
 int EXEC_P ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SHT_STRTAB ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct bfd_strtab_hash*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfd_strtab_hash*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct bfd_link_info*) ; 
 int /*<<< orphan*/  bfd_elf_set_group_contents ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elf_fake_sections ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_8__* FUNC10 (TYPE_1__*) ; 
 struct elf_backend_data* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct bfd_strtab_hash**,int) ; 

bfd_boolean
FUNC16 (bfd *abfd,
					 struct bfd_link_info *link_info)
{
  const struct elf_backend_data *bed = FUNC11 (abfd);
  bfd_boolean failed;
  struct bfd_strtab_hash *strtab = NULL;
  Elf_Internal_Shdr *shstrtab_hdr;

  if (abfd->output_has_begun)
    return TRUE;

  /* Do any elf backend specific processing first.  */
  if (bed->elf_backend_begin_write_processing)
    (*bed->elf_backend_begin_write_processing) (abfd, link_info);

  if (! FUNC12 (abfd))
    return FALSE;

  /* Post process the headers if necessary.  */
  if (bed->elf_backend_post_process_headers)
    (*bed->elf_backend_post_process_headers) (abfd, link_info);

  failed = FALSE;
  FUNC7 (abfd, elf_fake_sections, &failed);
  if (failed)
    return FALSE;

  if (!FUNC5 (abfd, link_info))
    return FALSE;

  /* The backend linker builds symbol table information itself.  */
  if (link_info == NULL && FUNC6 (abfd) > 0)
    {
      /* Non-zero if doing a relocatable link.  */
      int relocatable_p = ! (abfd->flags & (EXEC_P | DYNAMIC));

      if (! FUNC15 (abfd, &strtab, relocatable_p))
	return FALSE;
    }

  if (link_info == NULL)
    {
      FUNC7 (abfd, bfd_elf_set_group_contents, &failed);
      if (failed)
	return FALSE;
    }

  shstrtab_hdr = &FUNC10 (abfd)->shstrtab_hdr;
  /* sh_name was set in prep_headers.  */
  shstrtab_hdr->sh_type = SHT_STRTAB;
  shstrtab_hdr->sh_flags = 0;
  shstrtab_hdr->sh_addr = 0;
  shstrtab_hdr->sh_size = FUNC1 (FUNC9 (abfd));
  shstrtab_hdr->sh_entsize = 0;
  shstrtab_hdr->sh_link = 0;
  shstrtab_hdr->sh_info = 0;
  /* sh_offset is set in assign_file_positions_except_relocs.  */
  shstrtab_hdr->sh_addralign = 1;

  if (!FUNC4 (abfd, link_info))
    return FALSE;

  if (link_info == NULL && FUNC6 (abfd) > 0)
    {
      file_ptr off;
      Elf_Internal_Shdr *hdr;

      off = FUNC10 (abfd)->next_file_pos;

      hdr = &FUNC10 (abfd)->symtab_hdr;
      off = FUNC0 (hdr, off, TRUE);

      hdr = &FUNC10 (abfd)->symtab_shndx_hdr;
      if (hdr->sh_size != 0)
	off = FUNC0 (hdr, off, TRUE);

      hdr = &FUNC10 (abfd)->strtab_hdr;
      off = FUNC0 (hdr, off, TRUE);

      FUNC10 (abfd)->next_file_pos = off;

      /* Now that we know where the .strtab section goes, write it
	 out.  */
      if (FUNC8 (abfd, hdr->sh_offset, SEEK_SET) != 0
	  || ! FUNC2 (abfd, strtab))
	return FALSE;
      FUNC3 (strtab);
    }

  abfd->output_has_begun = TRUE;

  return TRUE;
}