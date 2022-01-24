#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_19__ ;

/* Type definitions */
typedef  enum elf_mips_reloc_type { ____Placeholder_elf_mips_reloc_type } elf_mips_reloc_type ;
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_22__ {int flags; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_23__ {int flags; TYPE_1__* section; } ;
typedef  TYPE_3__ asymbol ;
struct TYPE_24__ {int reloc_count; scalar_t__ vma; } ;
typedef  TYPE_4__ asection ;
struct TYPE_25__ {int /*<<< orphan*/  howto; int /*<<< orphan*/  addend; scalar_t__ address; TYPE_3__** sym_ptr_ptr; } ;
typedef  TYPE_5__ arelent ;
struct TYPE_27__ {int /*<<< orphan*/  r_addend; scalar_t__ r_offset; int /*<<< orphan*/  r_ssym; int /*<<< orphan*/  r_sym; int /*<<< orphan*/  r_type3; int /*<<< orphan*/  r_type2; int /*<<< orphan*/  r_type; } ;
struct TYPE_26__ {int sh_entsize; int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_offset; } ;
struct TYPE_21__ {TYPE_3__** symbol_ptr_ptr; } ;
struct TYPE_20__ {TYPE_3__** symbol_ptr_ptr; } ;
typedef  TYPE_6__ Elf_Internal_Shdr ;
typedef  TYPE_7__ Elf64_Mips_Internal_Rela ;
typedef  int /*<<< orphan*/  Elf64_Mips_External_Rela ;
typedef  int /*<<< orphan*/  Elf64_Mips_External_Rel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BSF_SECTION_SYM ; 
 int DYNAMIC ; 
 int EXEC_P ; 
 scalar_t__ FALSE ; 
#define  RSS_GP 136 
#define  RSS_GP0 135 
#define  RSS_LOC 134 
#define  RSS_UNDEF 133 
#define  R_MIPS_DELETE 132 
#define  R_MIPS_INSERT_A 131 
#define  R_MIPS_INSERT_B 130 
#define  R_MIPS_LITERAL 129 
#define  R_MIPS_NONE 128 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_19__* bfd_abs_section_ptr ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_7__*) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (bfd *abfd, asection *asect,
				  Elf_Internal_Shdr *rel_hdr,
				  bfd_size_type reloc_count,
				  arelent *relents, asymbol **symbols,
				  bfd_boolean dynamic)
{
  void *allocated;
  bfd_byte *native_relocs;
  arelent *relent;
  bfd_vma i;
  int entsize;
  bfd_boolean rela_p;

  allocated = FUNC3 (rel_hdr->sh_size);
  if (allocated == NULL)
    return FALSE;

  if (FUNC4 (abfd, rel_hdr->sh_offset, SEEK_SET) != 0
      || (FUNC2 (allocated, rel_hdr->sh_size, abfd)
	  != rel_hdr->sh_size))
    goto error_return;

  native_relocs = allocated;

  entsize = rel_hdr->sh_entsize;
  FUNC0 (entsize == sizeof (Elf64_Mips_External_Rel)
	      || entsize == sizeof (Elf64_Mips_External_Rela));

  if (entsize == sizeof (Elf64_Mips_External_Rel))
    rela_p = FALSE;
  else
    rela_p = TRUE;

  for (i = 0, relent = relents;
       i < reloc_count;
       i++, native_relocs += entsize)
    {
      Elf64_Mips_Internal_Rela rela;
      bfd_boolean used_sym, used_ssym;
      int ir;

      if (entsize == sizeof (Elf64_Mips_External_Rela))
	FUNC8 (abfd,
				   (Elf64_Mips_External_Rela *) native_relocs,
				   &rela);
      else
	FUNC7 (abfd,
				  (Elf64_Mips_External_Rel *) native_relocs,
				  &rela);

      /* Each entry represents exactly three actual relocations.  */

      used_sym = FALSE;
      used_ssym = FALSE;
      for (ir = 0; ir < 3; ir++)
	{
	  enum elf_mips_reloc_type type;

	  switch (ir)
	    {
	    default:
	      FUNC1 ();
	    case 0:
	      type = (enum elf_mips_reloc_type) rela.r_type;
	      break;
	    case 1:
	      type = (enum elf_mips_reloc_type) rela.r_type2;
	      break;
	    case 2:
	      type = (enum elf_mips_reloc_type) rela.r_type3;
	      break;
	    }

	  /* Some types require symbols, whereas some do not.  */
	  switch (type)
	    {
	    case R_MIPS_NONE:
	    case R_MIPS_LITERAL:
	    case R_MIPS_INSERT_A:
	    case R_MIPS_INSERT_B:
	    case R_MIPS_DELETE:
	      relent->sym_ptr_ptr = bfd_abs_section_ptr->symbol_ptr_ptr;
	      break;

	    default:
	      if (! used_sym)
		{
		  if (rela.r_sym == 0)
		    relent->sym_ptr_ptr = bfd_abs_section_ptr->symbol_ptr_ptr;
		  else
		    {
		      asymbol **ps, *s;

		      ps = symbols + rela.r_sym - 1;
		      s = *ps;
		      if ((s->flags & BSF_SECTION_SYM) == 0)
			relent->sym_ptr_ptr = ps;
		      else
			relent->sym_ptr_ptr = s->section->symbol_ptr_ptr;
		    }

		  used_sym = TRUE;
		}
	      else if (! used_ssym)
		{
		  switch (rela.r_ssym)
		    {
		    case RSS_UNDEF:
		      relent->sym_ptr_ptr =
			bfd_abs_section_ptr->symbol_ptr_ptr;
		      break;

		    case RSS_GP:
		    case RSS_GP0:
		    case RSS_LOC:
		      /* FIXME: I think these need to be handled using
			 special howto structures.  */
		      FUNC0 (0);
		      break;

		    default:
		      FUNC0 (0);
		      break;
		    }

		  used_ssym = TRUE;
		}
	      else
		relent->sym_ptr_ptr = bfd_abs_section_ptr->symbol_ptr_ptr;

	      break;
	    }

	  /* The address of an ELF reloc is section relative for an
	     object file, and absolute for an executable file or
	     shared library.  The address of a BFD reloc is always
	     section relative.  */
	  if ((abfd->flags & (EXEC_P | DYNAMIC)) == 0 || dynamic)
	    relent->address = rela.r_offset;
	  else
	    relent->address = rela.r_offset - asect->vma;

	  relent->addend = rela.r_addend;

	  relent->howto = FUNC6 (type, rela_p);

	  ++relent;
	}
    }

  asect->reloc_count += (relent - relents) / 3;

  if (allocated != NULL)
    FUNC5 (allocated);

  return TRUE;

 error_return:
  if (allocated != NULL)
    FUNC5 (allocated);
  return FALSE;
}