#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_9__ ;
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;
typedef  struct TYPE_30__   TYPE_17__ ;
typedef  struct TYPE_29__   TYPE_14__ ;
typedef  struct TYPE_28__   TYPE_12__ ;
typedef  struct TYPE_27__   TYPE_11__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
struct elf_strtab_hash {int dummy; } ;
struct TYPE_38__ {int st_value; int /*<<< orphan*/  st_shndx; int /*<<< orphan*/  st_info; scalar_t__ st_other; scalar_t__ st_name; scalar_t__ st_size; } ;
struct elf_link_local_dynamic_entry {int input_indx; struct elf_link_local_dynamic_entry* next; TYPE_9__* input_bfd; TYPE_8__ isym; } ;
struct elf_link_hash_table {int /*<<< orphan*/  dynsymcount; struct elf_link_local_dynamic_entry* dynlocal; struct elf_strtab_hash* dynstr; scalar_t__ dynamic_sections_created; TYPE_5__* hgot; } ;
struct bfd_link_info {int flags; TYPE_7__* hash; scalar_t__ executable; scalar_t__ shared; TYPE_9__* input_bfds; } ;
struct TYPE_30__ {TYPE_9__* dynobj; } ;
struct TYPE_31__ {scalar_t__ refcount; int offset; } ;
struct _bfd_sparc_elf_link_hash_table {int dynamic_interpreter_size; struct _bfd_sparc_elf_app_reg* app_regs; TYPE_17__ elf; TYPE_6__* srelplt; TYPE_10__* sgotplt; TYPE_10__* sdynbss; TYPE_10__* sgot; TYPE_10__* splt; int /*<<< orphan*/  is_vxworks; TYPE_1__ tls_ldm_got; TYPE_10__* srelgot; scalar_t__ dynamic_interpreter; } ;
struct _bfd_sparc_elf_dyn_relocs {int count; TYPE_10__* sec; struct _bfd_sparc_elf_dyn_relocs* next; } ;
struct _bfd_sparc_elf_app_reg {char* name; int /*<<< orphan*/  shndx; int /*<<< orphan*/  bind; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int bfd_size_type ;
typedef  scalar_t__ bfd_signed_vma ;
typedef  unsigned char bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_39__ {TYPE_10__* sections; struct TYPE_39__* link_next; } ;
typedef  TYPE_9__ bfd ;
struct TYPE_26__ {int size; unsigned char* contents; int flags; scalar_t__ reloc_count; int /*<<< orphan*/  name; struct TYPE_26__* next; struct TYPE_26__* output_section; } ;
typedef  TYPE_10__ asection ;
struct TYPE_37__ {int /*<<< orphan*/  table; } ;
struct TYPE_36__ {scalar_t__ size; } ;
struct TYPE_32__ {int value; } ;
struct TYPE_33__ {TYPE_2__ def; } ;
struct TYPE_34__ {TYPE_3__ u; } ;
struct TYPE_35__ {TYPE_4__ root; } ;
struct TYPE_29__ {TYPE_10__* sreloc; struct _bfd_sparc_elf_dyn_relocs* local_dynrel; } ;
struct TYPE_27__ {int sh_info; } ;
struct TYPE_28__ {TYPE_11__ symtab_hdr; } ;
typedef  int /*<<< orphan*/  PTR ;
typedef  TYPE_11__ Elf_Internal_Shdr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int DF_TEXTREL ; 
 int DT_DEBUG ; 
 int DT_JMPREL ; 
 int DT_PLTGOT ; 
 int DT_PLTREL ; 
 int DT_PLTRELSZ ; 
 int DT_RELA ; 
 int DT_RELAENT ; 
 int DT_RELASZ ; 
 int DT_SPARC_REGISTER ; 
 int DT_TEXTREL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 char GOT_TLS_GD ; 
 char GOT_TLS_IE ; 
 int SEC_EXCLUDE ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_LINKER_CREATED ; 
 int SEC_READONLY ; 
 int FUNC4 (struct _bfd_sparc_elf_link_hash_table*) ; 
 int FUNC5 (struct _bfd_sparc_elf_link_hash_table*) ; 
 int SPARC_INSN_BYTES ; 
 int /*<<< orphan*/  STT_REGISTER ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (struct elf_strtab_hash*,char*,int /*<<< orphan*/ ) ; 
 struct _bfd_sparc_elf_link_hash_table* FUNC7 (struct bfd_link_info*) ; 
 char* FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  allocate_dynrelocs ; 
 scalar_t__ FUNC10 (TYPE_9__*) ; 
 TYPE_10__* FUNC11 (TYPE_9__*,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (TYPE_10__*) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 scalar_t__ FUNC14 (TYPE_9__*,scalar_t__) ; 
 struct elf_link_hash_table* FUNC15 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_17__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC17 (TYPE_9__*) ; 
 TYPE_14__* FUNC18 (TYPE_10__*) ; 
 TYPE_12__* FUNC19 (TYPE_9__*) ; 
 int /*<<< orphan*/  readonly_dynrelocs ; 

bfd_boolean
FUNC20 (bfd *output_bfd,
				      struct bfd_link_info *info)
{
  struct _bfd_sparc_elf_link_hash_table *htab;
  bfd *dynobj;
  asection *s;
  bfd *ibfd;

  htab = FUNC7 (info);
  dynobj = htab->elf.dynobj;
  FUNC1 (dynobj != NULL);

  if (FUNC15 (info)->dynamic_sections_created)
    {
      /* Set the contents of the .interp section to the interpreter.  */
      if (info->executable)
	{
	  s = FUNC11 (dynobj, ".interp");
	  FUNC1 (s != NULL);
	  s->size = htab->dynamic_interpreter_size;
	  s->contents = (unsigned char *) htab->dynamic_interpreter;
	}
    }

  /* Set up .got offsets for local syms, and space for local dynamic
     relocs.  */
  for (ibfd = info->input_bfds; ibfd != NULL; ibfd = ibfd->link_next)
    {
      bfd_signed_vma *local_got;
      bfd_signed_vma *end_local_got;
      char *local_tls_type;
      bfd_size_type locsymcount;
      Elf_Internal_Shdr *symtab_hdr;
      asection *srel;

      if (FUNC10 (ibfd) != bfd_target_elf_flavour)
	continue;

      for (s = ibfd->sections; s != NULL; s = s->next)
	{
	  struct _bfd_sparc_elf_dyn_relocs *p;

	  for (p = FUNC18 (s)->local_dynrel; p != NULL; p = p->next)
	    {
	      if (!FUNC13 (p->sec)
		  && FUNC13 (p->sec->output_section))
		{
		  /* Input section has been discarded, either because
		     it is a copy of a linkonce section or due to
		     linker script /DISCARD/, so we'll be discarding
		     the relocs too.  */
		}
	      else if (p->count != 0)
		{
		  srel = FUNC18 (p->sec)->sreloc;
		  srel->size += p->count * FUNC4 (htab);
		  if ((p->sec->output_section->flags & SEC_READONLY) != 0)
		    info->flags |= DF_TEXTREL;
		}
	    }
	}

      local_got = FUNC17 (ibfd);
      if (!local_got)
	continue;

      symtab_hdr = &FUNC19 (ibfd)->symtab_hdr;
      locsymcount = symtab_hdr->sh_info;
      end_local_got = local_got + locsymcount;
      local_tls_type = FUNC8 (ibfd);
      s = htab->sgot;
      srel = htab->srelgot;
      for (; local_got < end_local_got; ++local_got, ++local_tls_type)
	{
	  if (*local_got > 0)
	    {
	      *local_got = s->size;
	      s->size += FUNC5 (htab);
	      if (*local_tls_type == GOT_TLS_GD)
		s->size += FUNC5 (htab);
	      if (info->shared
		  || *local_tls_type == GOT_TLS_GD
		  || *local_tls_type == GOT_TLS_IE)
		srel->size += FUNC4 (htab);
	    }
	  else
	    *local_got = (bfd_vma) -1;
	}
    }

  if (htab->tls_ldm_got.refcount > 0)
    {
      /* Allocate 2 got entries and 1 dynamic reloc for
	 R_SPARC_TLS_LDM_{HI22,LO10} relocs.  */
      htab->tls_ldm_got.offset = htab->sgot->size;
      htab->sgot->size += (2 * FUNC5 (htab));
      htab->srelgot->size += FUNC4 (htab);
    }
  else
    htab->tls_ldm_got.offset = -1;

  /* Allocate global sym .plt and .got entries, and space for global
     sym dynamic relocs.  */
  FUNC16 (&htab->elf, allocate_dynrelocs, (PTR) info);

  if (! FUNC0 (output_bfd)
      && !htab->is_vxworks
      && FUNC15 (info)->dynamic_sections_created)
    {
      /* Make space for the trailing nop in .plt.  */
      if (htab->splt->size > 0)
	htab->splt->size += 1 * SPARC_INSN_BYTES;

      /* If the .got section is more than 0x1000 bytes, we add
	 0x1000 to the value of _GLOBAL_OFFSET_TABLE_, so that 13
	 bit relocations have a greater chance of working.

	 FIXME: Make this optimization work for 64-bit too.  */
      if (htab->sgot->size >= 0x1000
	  && FUNC15 (info)->hgot->root.u.def.value == 0)
	FUNC15 (info)->hgot->root.u.def.value = 0x1000;
    }

  /* The check_relocs and adjust_dynamic_symbol entry points have
     determined the sizes of the various dynamic sections.  Allocate
     memory for them.  */
  for (s = dynobj->sections; s != NULL; s = s->next)
    {
      if ((s->flags & SEC_LINKER_CREATED) == 0)
	continue;

      if (s == htab->splt
	  || s == htab->sgot
	  || s == htab->sdynbss
	  || s == htab->sgotplt)
	{
	  /* Strip this section if we don't need it; see the
	     comment below.  */
	}
      else if (FUNC2 (s->name, ".rela"))
	{
	  if (s->size != 0)
	    {
	      /* We use the reloc_count field as a counter if we need
		 to copy relocs into the output file.  */
	      s->reloc_count = 0;
	    }
	}
      else
	{
	  /* It's not one of our sections.  */
	  continue;
	}

      if (s->size == 0)
	{
	  /* If we don't need this section, strip it from the
	     output file.  This is mostly to handle .rela.bss and
	     .rela.plt.  We must create both sections in
	     create_dynamic_sections, because they must be created
	     before the linker maps input sections to output
	     sections.  The linker does that before
	     adjust_dynamic_symbol is called, and it is that
	     function which decides whether anything needs to go
	     into these sections.  */
	  s->flags |= SEC_EXCLUDE;
	  continue;
	}

      if ((s->flags & SEC_HAS_CONTENTS) == 0)
	continue;

      /* Allocate memory for the section contents.  Zero the memory
	 for the benefit of .rela.plt, which has 4 unused entries
	 at the beginning, and we don't want garbage.  */
      s->contents = (bfd_byte *) FUNC14 (dynobj, s->size);
      if (s->contents == NULL)
	return FALSE;
    }

  if (FUNC15 (info)->dynamic_sections_created)
    {
      /* Add some entries to the .dynamic section.  We fill in the
	 values later, in _bfd_sparc_elf_finish_dynamic_sections, but we
	 must add the entries now so that we get the correct size for
	 the .dynamic section.  The DT_DEBUG entry is filled in by the
	 dynamic linker and used by the debugger.  */
#define add_dynamic_entry(TAG, VAL) \
  _bfd_elf_add_dynamic_entry (info, TAG, VAL)

      if (info->executable)
	{
	  if (!add_dynamic_entry (DT_DEBUG, 0))
	    return FALSE;
	}

      if (htab->srelplt->size != 0)
	{
	  if (!add_dynamic_entry (DT_PLTGOT, 0)
	      || !add_dynamic_entry (DT_PLTRELSZ, 0)
	      || !add_dynamic_entry (DT_PLTREL, DT_RELA)
	      || !add_dynamic_entry (DT_JMPREL, 0))
	    return FALSE;
	}

      if (!add_dynamic_entry (DT_RELA, 0)
	  || !add_dynamic_entry (DT_RELASZ, 0)
	  || !add_dynamic_entry (DT_RELAENT,
				 FUNC4 (htab)))
	return FALSE;

      /* If any dynamic relocs apply to a read-only section,
	 then we need a DT_TEXTREL entry.  */
      if ((info->flags & DF_TEXTREL) == 0)
	FUNC16 (&htab->elf, readonly_dynrelocs,
				(PTR) info);

      if (info->flags & DF_TEXTREL)
	{
	  if (!add_dynamic_entry (DT_TEXTREL, 0))
	    return FALSE;
	}

      if (FUNC0 (output_bfd))
	{
	  int reg;
	  struct _bfd_sparc_elf_app_reg * app_regs;
	  struct elf_strtab_hash *dynstr;
	  struct elf_link_hash_table *eht = FUNC15 (info);

	  /* Add dynamic STT_REGISTER symbols and corresponding DT_SPARC_REGISTER
	     entries if needed.  */
	  app_regs = FUNC7 (info)->app_regs;
	  dynstr = eht->dynstr;

	  for (reg = 0; reg < 4; reg++)
	    if (app_regs [reg].name != NULL)
	      {
		struct elf_link_local_dynamic_entry *entry, *e;

		if (!add_dynamic_entry (DT_SPARC_REGISTER, 0))
		  return FALSE;

		entry = (struct elf_link_local_dynamic_entry *)
		  FUNC12 (&info->hash->table, sizeof (*entry));
		if (entry == NULL)
		  return FALSE;

		/* We cheat here a little bit: the symbol will not be local, so we
		   put it at the end of the dynlocal linked list.  We will fix it
		   later on, as we have to fix other fields anyway.  */
		entry->isym.st_value = reg < 2 ? reg + 2 : reg + 4;
		entry->isym.st_size = 0;
		if (*app_regs [reg].name != '\0')
		  entry->isym.st_name
		    = FUNC6 (dynstr, app_regs[reg].name, FALSE);
		else
		  entry->isym.st_name = 0;
		entry->isym.st_other = 0;
		entry->isym.st_info = FUNC3 (app_regs [reg].bind,
						   STT_REGISTER);
		entry->isym.st_shndx = app_regs [reg].shndx;
		entry->next = NULL;
		entry->input_bfd = output_bfd;
		entry->input_indx = -1;

		if (eht->dynlocal == NULL)
		  eht->dynlocal = entry;
		else
		  {
		    for (e = eht->dynlocal; e->next; e = e->next)
		      ;
		    e->next = entry;
		  }
		eht->dynsymcount++;
	      }
	}
    }
#undef add_dynamic_entry

  return TRUE;
}