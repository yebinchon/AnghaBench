#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_15__ ;
typedef  struct TYPE_30__   TYPE_14__ ;
typedef  struct TYPE_29__   TYPE_13__ ;
typedef  struct TYPE_28__   TYPE_12__ ;
typedef  struct TYPE_27__   TYPE_11__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
struct TYPE_34__ {int value; TYPE_9__* section; } ;
struct TYPE_33__ {scalar_t__ link; } ;
struct TYPE_35__ {TYPE_3__ def; TYPE_2__ i; } ;
struct TYPE_36__ {scalar_t__ type; TYPE_4__ u; } ;
struct TYPE_37__ {TYPE_5__ root; int /*<<< orphan*/  forced_local; } ;
struct mips_elf_link_hash_entry {TYPE_6__ root; } ;
struct bfd_link_info {int /*<<< orphan*/  keep_memory; int /*<<< orphan*/  symbolic; scalar_t__ shared; scalar_t__ relocatable; } ;
typedef  int bfd_vma ;
typedef  int bfd_signed_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_40__ {int output_offset; int reloc_count; TYPE_7__* output_section; } ;
typedef  TYPE_9__ asection ;
struct TYPE_39__ {int /*<<< orphan*/ * contents; } ;
struct TYPE_38__ {int vma; } ;
struct TYPE_32__ {int int_rels_per_ext_rel; } ;
struct TYPE_31__ {TYPE_8__ this_hdr; } ;
struct TYPE_27__ {size_t sh_info; scalar_t__ contents; } ;
struct TYPE_30__ {TYPE_11__ symtab_hdr; } ;
struct TYPE_29__ {TYPE_1__* s; } ;
struct TYPE_28__ {int r_addend; int r_offset; int /*<<< orphan*/  r_info; } ;
struct TYPE_26__ {scalar_t__ st_shndx; int st_value; } ;
typedef  TYPE_10__ Elf_Internal_Sym ;
typedef  TYPE_11__ Elf_Internal_Shdr ;
typedef  TYPE_12__ Elf_Internal_Rela ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 unsigned int R_MIPS_JALR ; 
 scalar_t__ SHN_ABS ; 
 scalar_t__ SHN_COMMON ; 
 scalar_t__ SHN_UNDEF ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_12__* FUNC2 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_9__* bfd_abs_section_ptr ; 
 TYPE_9__* bfd_com_section_ptr ; 
 TYPE_10__* FUNC3 (int /*<<< orphan*/ *,TYPE_11__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_link_hash_defined ; 
 scalar_t__ bfd_link_hash_defweak ; 
 scalar_t__ bfd_link_hash_indirect ; 
 scalar_t__ bfd_link_hash_warning ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_9__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_15__* FUNC9 (TYPE_9__*) ; 
 scalar_t__* FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_14__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_13__* FUNC13 (int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC14 (bfd *abfd, asection *sec,
			 struct bfd_link_info *link_info,
			 bfd_boolean *again)
{
  Elf_Internal_Rela *internal_relocs;
  Elf_Internal_Rela *irel, *irelend;
  Elf_Internal_Shdr *symtab_hdr;
  bfd_byte *contents = NULL;
  size_t extsymoff;
  bfd_boolean changed_contents = FALSE;
  bfd_vma sec_start = sec->output_section->vma + sec->output_offset;
  Elf_Internal_Sym *isymbuf = NULL;

  /* We are not currently changing any sizes, so only one pass.  */
  *again = FALSE;

  if (link_info->relocatable)
    return TRUE;

  internal_relocs = FUNC2 (abfd, sec, NULL, NULL,
					       link_info->keep_memory);
  if (internal_relocs == NULL)
    return TRUE;

  irelend = internal_relocs + sec->reloc_count
    * FUNC13 (abfd)->s->int_rels_per_ext_rel;
  symtab_hdr = &FUNC11 (abfd)->symtab_hdr;
  extsymoff = (FUNC8 (abfd)) ? 0 : symtab_hdr->sh_info;

  for (irel = internal_relocs; irel < irelend; irel++)
    {
      bfd_vma symval;
      bfd_signed_vma sym_offset;
      unsigned int r_type;
      unsigned long r_symndx;
      asection *sym_sec;
      unsigned long instruction;

      /* Turn jalr into bgezal, and jr into beq, if they're marked
	 with a JALR relocation, that indicate where they jump to.
	 This saves some pipeline bubbles.  */
      r_type = FUNC1 (abfd, irel->r_info);
      if (r_type != R_MIPS_JALR)
	continue;

      r_symndx = FUNC0 (abfd, irel->r_info);
      /* Compute the address of the jump target.  */
      if (r_symndx >= extsymoff)
	{
	  struct mips_elf_link_hash_entry *h
	    = ((struct mips_elf_link_hash_entry *)
	       FUNC10 (abfd) [r_symndx - extsymoff]);

	  while (h->root.root.type == bfd_link_hash_indirect
		 || h->root.root.type == bfd_link_hash_warning)
	    h = (struct mips_elf_link_hash_entry *) h->root.root.u.i.link;

	  /* If a symbol is undefined, or if it may be overridden,
	     skip it.  */
	  if (! ((h->root.root.type == bfd_link_hash_defined
		  || h->root.root.type == bfd_link_hash_defweak)
		 && h->root.root.u.def.section)
	      || (link_info->shared && ! link_info->symbolic
		  && !h->root.forced_local))
	    continue;

	  sym_sec = h->root.root.u.def.section;
	  if (sym_sec->output_section)
	    symval = (h->root.root.u.def.value
		      + sym_sec->output_section->vma
		      + sym_sec->output_offset);
	  else
	    symval = h->root.root.u.def.value;
	}
      else
	{
	  Elf_Internal_Sym *isym;

	  /* Read this BFD's symbols if we haven't done so already.  */
	  if (isymbuf == NULL && symtab_hdr->sh_info != 0)
	    {
	      isymbuf = (Elf_Internal_Sym *) symtab_hdr->contents;
	      if (isymbuf == NULL)
		isymbuf = FUNC3 (abfd, symtab_hdr,
						symtab_hdr->sh_info, 0,
						NULL, NULL, NULL);
	      if (isymbuf == NULL)
		goto relax_return;
	    }

	  isym = isymbuf + r_symndx;
	  if (isym->st_shndx == SHN_UNDEF)
	    continue;
	  else if (isym->st_shndx == SHN_ABS)
	    sym_sec = bfd_abs_section_ptr;
	  else if (isym->st_shndx == SHN_COMMON)
	    sym_sec = bfd_com_section_ptr;
	  else
	    sym_sec
	      = FUNC7 (abfd, isym->st_shndx);
	  symval = isym->st_value
	    + sym_sec->output_section->vma
	    + sym_sec->output_offset;
	}

      /* Compute branch offset, from delay slot of the jump to the
	 branch target.  */
      sym_offset = (symval + irel->r_addend)
	- (sec_start + irel->r_offset + 4);

      /* Branch offset must be properly aligned.  */
      if ((sym_offset & 3) != 0)
	continue;

      sym_offset >>= 2;

      /* Check that it's in range.  */
      if (sym_offset < -0x8000 || sym_offset >= 0x8000)
	continue;

      /* Get the section contents if we haven't done so already.  */
      if (contents == NULL)
	{
	  /* Get cached copy if it exists.  */
	  if (FUNC9 (sec)->this_hdr.contents != NULL)
	    contents = FUNC9 (sec)->this_hdr.contents;
	  else
	    {
	      if (!FUNC5 (abfd, sec, &contents))
		goto relax_return;
	    }
	}

      instruction = FUNC4 (abfd, contents + irel->r_offset);

      /* If it was jalr <reg>, turn it into bgezal $zero, <target>.  */
      if ((instruction & 0xfc1fffff) == 0x0000f809)
	instruction = 0x04110000;
      /* If it was jr <reg>, turn it into b <target>.  */
      else if ((instruction & 0xfc1fffff) == 0x00000008)
	instruction = 0x10000000;
      else
	continue;

      instruction |= (sym_offset & 0xffff);
      FUNC6 (abfd, instruction, contents + irel->r_offset);
      changed_contents = TRUE;
    }

  if (contents != NULL
      && FUNC9 (sec)->this_hdr.contents != contents)
    {
      if (!changed_contents && !link_info->keep_memory)
        FUNC12 (contents);
      else
        {
          /* Cache the section contents for elf_link_input_bfd.  */
          FUNC9 (sec)->this_hdr.contents = contents;
        }
    }
  return TRUE;

 relax_return:
  if (contents != NULL
      && FUNC9 (sec)->this_hdr.contents != contents)
    FUNC12 (contents);
  return FALSE;
}