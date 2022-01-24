#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_26__ ;
typedef  struct TYPE_28__   TYPE_25__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct elf_backend_data {int /*<<< orphan*/  (* elf_info_to_howto_rel ) (TYPE_1__*,TYPE_3__*,TYPE_5__*) ;int /*<<< orphan*/  (* elf_info_to_howto ) (TYPE_1__*,TYPE_3__*,TYPE_5__*) ;} ;
typedef  unsigned int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_27__ {int flags; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_30__ {int /*<<< orphan*/  name; scalar_t__ vma; } ;
typedef  TYPE_2__ asection ;
struct TYPE_31__ {int /*<<< orphan*/  addend; int /*<<< orphan*/ ** sym_ptr_ptr; scalar_t__ address; } ;
typedef  TYPE_3__ arelent ;
struct TYPE_33__ {int /*<<< orphan*/  r_addend; int /*<<< orphan*/  r_info; scalar_t__ r_offset; } ;
struct TYPE_32__ {int sh_entsize; int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_offset; } ;
struct TYPE_29__ {int /*<<< orphan*/ ** symbol_ptr_ptr; } ;
struct TYPE_28__ {int /*<<< orphan*/ ** symbol_ptr_ptr; } ;
typedef  TYPE_4__ Elf_Internal_Shdr ;
typedef  TYPE_5__ Elf_Internal_Rela ;
typedef  int /*<<< orphan*/  Elf_External_Rela ;
typedef  int /*<<< orphan*/  Elf_External_Rel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DYNAMIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EXEC_P ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 TYPE_26__ bfd_abs_section ; 
 TYPE_25__* bfd_abs_section_ptr ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 unsigned int FUNC5 (TYPE_1__*) ; 
 unsigned int FUNC6 (TYPE_1__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 struct elf_backend_data* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_3__*,TYPE_5__*) ; 

__attribute__((used)) static bfd_boolean
FUNC16 (bfd *abfd,
				    asection *asect,
				    Elf_Internal_Shdr *rel_hdr,
				    bfd_size_type reloc_count,
				    arelent *relents,
				    asymbol **symbols,
				    bfd_boolean dynamic)
{
  const struct elf_backend_data * const ebd = FUNC12 (abfd);
  void *allocated = NULL;
  bfd_byte *native_relocs;
  arelent *relent;
  unsigned int i;
  int entsize;
  unsigned int symcount;

  allocated = FUNC7 (rel_hdr->sh_size);
  if (allocated == NULL)
    goto error_return;

  if (FUNC8 (abfd, rel_hdr->sh_offset, SEEK_SET) != 0
      || (FUNC4 (allocated, rel_hdr->sh_size, abfd)
	  != rel_hdr->sh_size))
    goto error_return;

  native_relocs = allocated;

  entsize = rel_hdr->sh_entsize;
  FUNC0 (entsize == sizeof (Elf_External_Rel)
	      || entsize == sizeof (Elf_External_Rela));

  if (dynamic)
    symcount = FUNC5 (abfd);
  else
    symcount = FUNC6 (abfd);

  for (i = 0, relent = relents;
       i < reloc_count;
       i++, relent++, native_relocs += entsize)
    {
      Elf_Internal_Rela rela;

      if (entsize == sizeof (Elf_External_Rela))
	FUNC10 (abfd, native_relocs, &rela);
      else
	FUNC9 (abfd, native_relocs, &rela);

      /* The address of an ELF reloc is section relative for an object
	 file, and absolute for an executable file or shared library.
	 The address of a normal BFD reloc is always section relative,
	 and the address of a dynamic reloc is absolute..  */
      if ((abfd->flags & (EXEC_P | DYNAMIC)) == 0 || dynamic)
	relent->address = rela.r_offset;
      else
	relent->address = rela.r_offset - asect->vma;

      if (FUNC1 (rela.r_info) == 0)
	relent->sym_ptr_ptr = bfd_abs_section_ptr->symbol_ptr_ptr;
      else if (FUNC1 (rela.r_info) > symcount)
	{
	  FUNC3)
	    (FUNC2("%s(%s): relocation %d has invalid symbol index %ld"),
	     abfd->filename, asect->name, i, FUNC1 (rela.r_info));
	  relent->sym_ptr_ptr = bfd_abs_section.symbol_ptr_ptr;
	}
      else
	{
	  asymbol **ps;

	  ps = symbols + FUNC1 (rela.r_info) - 1;

	  relent->sym_ptr_ptr = ps;
	}

      relent->addend = rela.r_addend;

      if ((entsize == sizeof (Elf_External_Rela)
	   && ebd->elf_info_to_howto != NULL)
	  || ebd->elf_info_to_howto_rel == NULL)
	(*ebd->elf_info_to_howto) (abfd, relent, &rela);
      else
	(*ebd->elf_info_to_howto_rel) (abfd, relent, &rela);
    }

  if (allocated != NULL)
    FUNC11 (allocated);

  return TRUE;

 error_return:
  if (allocated != NULL)
    FUNC11 (allocated);
  return FALSE;
}