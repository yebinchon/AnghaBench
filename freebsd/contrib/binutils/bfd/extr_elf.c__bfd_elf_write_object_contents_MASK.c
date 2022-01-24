#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct elf_backend_data {TYPE_2__* s; int /*<<< orphan*/  (* elf_backend_final_write_processing ) (TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* elf_backend_section_processing ) (TYPE_3__*,TYPE_4__*) ;} ;
typedef  scalar_t__ bfd_size_type ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_27__ {int /*<<< orphan*/  output_has_begun; } ;
typedef  TYPE_3__ bfd ;
struct TYPE_28__ {scalar_t__ sh_size; scalar_t__ contents; int /*<<< orphan*/  sh_offset; } ;
struct TYPE_26__ {scalar_t__ (* write_shdrs_and_ehdr ) (TYPE_3__*) ;int /*<<< orphan*/  write_relocs; } ;
struct TYPE_25__ {int /*<<< orphan*/  sh_offset; } ;
struct TYPE_24__ {int /*<<< orphan*/  linker; TYPE_1__ shstrtab_hdr; } ;
typedef  TYPE_4__ Elf_Internal_Shdr ;
typedef  int /*<<< orphan*/  Elf_Internal_Ehdr ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SHN_HIRESERVE ; 
 int SHN_LORESERVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*) ; 
 TYPE_4__** FUNC7 (TYPE_3__*) ; 
 unsigned int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*) ; 
 TYPE_10__* FUNC10 (TYPE_3__*) ; 
 struct elf_backend_data* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 

bfd_boolean
FUNC15 (bfd *abfd)
{
  const struct elf_backend_data *bed = FUNC11 (abfd);
  Elf_Internal_Ehdr *i_ehdrp;
  Elf_Internal_Shdr **i_shdrp;
  bfd_boolean failed;
  unsigned int count, num_sec;

  if (! abfd->output_has_begun
      && ! FUNC1 (abfd, NULL))
    return FALSE;

  i_shdrp = FUNC7 (abfd);
  i_ehdrp = FUNC6 (abfd);

  failed = FALSE;
  FUNC4 (abfd, bed->s->write_relocs, &failed);
  if (failed)
    return FALSE;

  FUNC0 (abfd);

  /* After writing the headers, we need to write the sections too...  */
  num_sec = FUNC8 (abfd);
  for (count = 1; count < num_sec; count++)
    {
      if (bed->elf_backend_section_processing)
	(*bed->elf_backend_section_processing) (abfd, i_shdrp[count]);
      if (i_shdrp[count]->contents)
	{
	  bfd_size_type amt = i_shdrp[count]->sh_size;

	  if (FUNC5 (abfd, i_shdrp[count]->sh_offset, SEEK_SET) != 0
	      || FUNC3 (i_shdrp[count]->contents, amt, abfd) != amt)
	    return FALSE;
	}
      if (count == SHN_LORESERVE - 1)
	count += SHN_HIRESERVE + 1 - SHN_LORESERVE;
    }

  /* Write out the section header names.  */
  if (FUNC9 (abfd) != NULL
      && (FUNC5 (abfd, FUNC10 (abfd)->shstrtab_hdr.sh_offset, SEEK_SET) != 0
	  || !FUNC2 (abfd, FUNC9 (abfd))))
    return FALSE;

  if (bed->elf_backend_final_write_processing)
    (*bed->elf_backend_final_write_processing) (abfd,
						FUNC10 (abfd)->linker);

  return bed->s->write_shdrs_and_ehdr (abfd);
}