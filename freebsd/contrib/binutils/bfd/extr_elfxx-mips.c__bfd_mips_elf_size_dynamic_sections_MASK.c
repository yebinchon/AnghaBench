#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct mips_got_info {unsigned int global_gotno; unsigned int local_gotno; unsigned int assigned_gotno; unsigned int tls_gotno; int /*<<< orphan*/  got_entries; struct mips_got_info* next; } ;
struct mips_elf_set_global_got_offset_arg {scalar_t__ needed; struct bfd_link_info* info; scalar_t__ needed_relocs; struct mips_got_info* g; int /*<<< orphan*/  value; } ;
struct mips_elf_link_hash_table {scalar_t__ function_stub_size; scalar_t__ compact_rel_size; TYPE_2__* splt; scalar_t__ is_vxworks; TYPE_2__* sgotplt; int /*<<< orphan*/  use_rld_obj_head; } ;
struct mips_elf_count_tls_arg {scalar_t__ needed; struct bfd_link_info* info; scalar_t__ needed_relocs; struct mips_got_info* g; int /*<<< orphan*/  value; } ;
struct bfd_link_info {int flags; scalar_t__ executable; scalar_t__ shared; scalar_t__ combreloc; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_20__ {TYPE_2__* sections; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_21__ {scalar_t__ size; int flags; int /*<<< orphan*/ * contents; scalar_t__ reloc_count; struct TYPE_21__* output_section; struct TYPE_21__* next; } ;
typedef  TYPE_2__ asection ;
struct TYPE_22__ {scalar_t__ dynamic_sections_created; TYPE_1__* dynobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int DF_TEXTREL ; 
 int /*<<< orphan*/  DT_DEBUG ; 
 int /*<<< orphan*/  DT_JMPREL ; 
 int /*<<< orphan*/  DT_MIPS_BASE_ADDRESS ; 
 int /*<<< orphan*/  DT_MIPS_FLAGS ; 
 int /*<<< orphan*/  DT_MIPS_GOTSYM ; 
 int /*<<< orphan*/  DT_MIPS_HIPAGENO ; 
 int /*<<< orphan*/  DT_MIPS_LOCAL_GOTNO ; 
 int /*<<< orphan*/  DT_MIPS_OPTIONS ; 
 int /*<<< orphan*/  DT_MIPS_RLD_MAP ; 
 int /*<<< orphan*/  DT_MIPS_RLD_VERSION ; 
 int /*<<< orphan*/  DT_MIPS_SYMTABNO ; 
 int /*<<< orphan*/  DT_MIPS_UNREFEXTNO ; 
 int /*<<< orphan*/  DT_PLTGOT ; 
 int /*<<< orphan*/  DT_PLTREL ; 
 int /*<<< orphan*/  DT_PLTRELSZ ; 
 int /*<<< orphan*/  DT_REL ; 
 int /*<<< orphan*/  DT_RELA ; 
 int /*<<< orphan*/  DT_RELAENT ; 
 int /*<<< orphan*/  DT_RELASZ ; 
 int /*<<< orphan*/  DT_RELENT ; 
 int /*<<< orphan*/  DT_RELSZ ; 
 int /*<<< orphan*/  DT_TEXTREL ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfd_link_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char const* FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (struct bfd_link_info*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 char* FUNC9 (TYPE_1__*) ; 
 unsigned int FUNC10 (struct bfd_link_info*) ; 
 int SEC_ALLOC ; 
 int SEC_EXCLUDE ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_LINKER_CREATED ; 
 int SEC_READONLY ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  bfd_error_no_memory ; 
 TYPE_2__* FUNC12 (TYPE_1__*,char const*) ; 
 char* FUNC13 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (TYPE_1__*,scalar_t__) ; 
 TYPE_5__* FUNC16 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ ,struct mips_elf_set_global_got_offset_arg*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mips_elf_set_global_got_offset_arg*) ; 
 scalar_t__ ict_irix5 ; 
 scalar_t__ ict_irix6 ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,struct bfd_link_info*,unsigned int) ; 
 int /*<<< orphan*/  mips_elf_count_global_tls_relocs ; 
 int /*<<< orphan*/  mips_elf_count_local_tls_relocs ; 
 struct mips_got_info* FUNC20 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct mips_elf_link_hash_table* FUNC21 (struct bfd_link_info*) ; 
 scalar_t__ FUNC22 (struct bfd_link_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct mips_got_info*) ; 
 int /*<<< orphan*/  mips_elf_set_global_got_offset ; 
 scalar_t__ FUNC24 (char const*,char*) ; 
 scalar_t__ FUNC25 (scalar_t__) ; 

bfd_boolean
FUNC26 (bfd *output_bfd,
				     struct bfd_link_info *info)
{
  bfd *dynobj;
  asection *s, *sreldyn;
  bfd_boolean reltext;
  struct mips_elf_link_hash_table *htab;

  htab = FUNC21 (info);
  dynobj = FUNC16 (info)->dynobj;
  FUNC0 (dynobj != NULL);

  if (FUNC16 (info)->dynamic_sections_created)
    {
      /* Set the contents of the .interp section to the interpreter.  */
      if (info->executable)
	{
	  s = FUNC12 (dynobj, ".interp");
	  FUNC0 (s != NULL);
	  s->size
	    = FUNC25 (FUNC2 (output_bfd)) + 1;
	  s->contents
	    = (bfd_byte *) FUNC2 (output_bfd);
	}
    }

  /* The check_relocs and adjust_dynamic_symbol entry points have
     determined the sizes of the various dynamic sections.  Allocate
     memory for them.  */
  reltext = FALSE;
  sreldyn = NULL;
  for (s = dynobj->sections; s != NULL; s = s->next)
    {
      const char *name;

      /* It's OK to base decisions on the section name, because none
	 of the dynobj section names depend upon the input files.  */
      name = FUNC13 (dynobj, s);

      if ((s->flags & SEC_LINKER_CREATED) == 0)
	continue;

      if (FUNC1 (name, ".rel"))
	{
	  if (s->size != 0)
	    {
	      const char *outname;
	      asection *target;

	      /* If this relocation section applies to a read only
                 section, then we probably need a DT_TEXTREL entry.
                 If the relocation section is .rel(a).dyn, we always
                 assert a DT_TEXTREL entry rather than testing whether
                 there exists a relocation to a read only section or
                 not.  */
	      outname = FUNC13 (output_bfd,
					      s->output_section);
	      target = FUNC12 (output_bfd, outname + 4);
	      if ((target != NULL
		   && (target->flags & SEC_READONLY) != 0
		   && (target->flags & SEC_ALLOC) != 0)
		  || FUNC24 (outname, FUNC7 (info)) == 0)
		reltext = TRUE;

	      /* We use the reloc_count field as a counter if we need
		 to copy relocs into the output file.  */
	      if (FUNC24 (name, FUNC7 (info)) != 0)
		s->reloc_count = 0;

	      /* If combreloc is enabled, elf_link_sort_relocs() will
		 sort relocations, but in a different way than we do,
		 and before we're done creating relocations.  Also, it
		 will move them around between input sections'
		 relocation's contents, so our sorting would be
		 broken, so don't let it run.  */
	      info->combreloc = 0;
	    }
	}
      else if (htab->is_vxworks && FUNC24 (name, ".got") == 0)
	{
	  /* Executables do not need a GOT.  */
	  if (info->shared)
	    {
	      /* Allocate relocations for all but the reserved entries.  */
	      struct mips_got_info *g;
	      unsigned int count;

	      g = FUNC20 (dynobj, NULL);
	      count = (g->global_gotno
		       + g->local_gotno
		       - FUNC10 (info));
	      FUNC19 (dynobj, info, count);
	    }
	}
      else if (!htab->is_vxworks && FUNC1 (name, ".got"))
	{
	  /* _bfd_mips_elf_always_size_sections() has already done
	     most of the work, but some symbols may have been mapped
	     to versions that we must now resolve in the got_entries
	     hash tables.  */
	  struct mips_got_info *gg = FUNC20 (dynobj, NULL);
	  struct mips_got_info *g = gg;
	  struct mips_elf_set_global_got_offset_arg set_got_offset_arg;
	  unsigned int needed_relocs = 0;

	  if (gg->next)
	    {
	      set_got_offset_arg.value = FUNC5 (output_bfd);
	      set_got_offset_arg.info = info;

	      /* NOTE 2005-02-03: How can this call, or the next, ever
		 find any indirect entries to resolve?  They were all
		 resolved in mips_elf_multi_got.  */
	      FUNC23 (gg);
	      for (g = gg->next; g && g->next != gg; g = g->next)
		{
		  unsigned int save_assign;

		  FUNC23 (g);

		  /* Assign offsets to global GOT entries.  */
		  save_assign = g->assigned_gotno;
		  g->assigned_gotno = g->local_gotno;
		  set_got_offset_arg.g = g;
		  set_got_offset_arg.needed_relocs = 0;
		  FUNC18 (g->got_entries,
				 mips_elf_set_global_got_offset,
				 &set_got_offset_arg);
		  needed_relocs += set_got_offset_arg.needed_relocs;
		  FUNC0 (g->assigned_gotno - g->local_gotno
			      <= g->global_gotno);

		  g->assigned_gotno = save_assign;
		  if (info->shared)
		    {
		      needed_relocs += g->local_gotno - g->assigned_gotno;
		      FUNC0 (g->assigned_gotno == g->next->local_gotno
				  + g->next->global_gotno
				  + g->next->tls_gotno
				  + FUNC10 (info));
		    }
		}
	    }
	  else
	    {
	      struct mips_elf_count_tls_arg arg;
	      arg.info = info;
	      arg.needed = 0;

	      FUNC18 (gg->got_entries, mips_elf_count_local_tls_relocs,
			     &arg);
	      FUNC17 (FUNC16 (info),
				      mips_elf_count_global_tls_relocs,
				      &arg);

	      needed_relocs += arg.needed;
	    }

	  if (needed_relocs)
	    FUNC19 (dynobj, info,
						   needed_relocs);
	}
      else if (FUNC24 (name, FUNC9 (output_bfd)) == 0)
	{
	  /* IRIX rld assumes that the function stub isn't at the end
	     of .text section.  So put a dummy.  XXX  */
	  s->size += htab->function_stub_size;
	}
      else if (! info->shared
	       && ! FUNC21 (info)->use_rld_obj_head
	       && FUNC1 (name, ".rld_map"))
	{
	  /* We add a room for __rld_map.  It will be filled in by the
	     rtld to contain a pointer to the _r_debug structure.  */
	  s->size += FUNC8 (output_bfd);
	}
      else if (FUNC11 (output_bfd)
	       && FUNC1 (name, ".compact_rel"))
	s->size += FUNC21 (info)->compact_rel_size;
      else if (! FUNC1 (name, ".init")
	       && s != htab->sgotplt
	       && s != htab->splt)
	{
	  /* It's not one of our sections, so don't allocate space.  */
	  continue;
	}

      if (s->size == 0)
	{
	  s->flags |= SEC_EXCLUDE;
	  continue;
	}

      if ((s->flags & SEC_HAS_CONTENTS) == 0)
	continue;

      /* Allocate memory for this section last, since we may increase its
	 size above.  */
      if (FUNC24 (name, FUNC7 (info)) == 0)
	{
	  sreldyn = s;
	  continue;
	}

      /* Allocate memory for the section contents.  */
      s->contents = FUNC15 (dynobj, s->size);
      if (s->contents == NULL)
	{
	  FUNC14 (bfd_error_no_memory);
	  return FALSE;
	}
    }

  /* Allocate memory for the .rel(a).dyn section.  */
  if (sreldyn != NULL)
    {
      sreldyn->contents = FUNC15 (dynobj, sreldyn->size);
      if (sreldyn->contents == NULL)
	{
	  FUNC14 (bfd_error_no_memory);
	  return FALSE;
	}
    }

  if (FUNC16 (info)->dynamic_sections_created)
    {
      /* Add some entries to the .dynamic section.  We fill in the
	 values later, in _bfd_mips_elf_finish_dynamic_sections, but we
	 must add the entries now so that we get the correct size for
	 the .dynamic section.  */

      /* SGI object has the equivalence of DT_DEBUG in the
	 DT_MIPS_RLD_MAP entry.  This must come first because glibc
	 only fills in DT_MIPS_RLD_MAP (not DT_DEBUG) and GDB only
	 looks at the first one it sees.  */
      if (!info->shared
	  && !FUNC4 (info, DT_MIPS_RLD_MAP, 0))
	return FALSE;

      /* The DT_DEBUG entry may be filled in by the dynamic linker and
	 used by the debugger.  */
      if (info->executable
	  && !FUNC11 (output_bfd)
	  && !FUNC4 (info, DT_DEBUG, 0))
	return FALSE;

      if (reltext && (FUNC11 (output_bfd) || htab->is_vxworks))
	info->flags |= DF_TEXTREL;

      if ((info->flags & DF_TEXTREL) != 0)
	{
	  if (! FUNC4 (info, DT_TEXTREL, 0))
	    return FALSE;

	  /* Clear the DF_TEXTREL flag.  It will be set again if we
	     write out an actual text relocation; we may not, because
	     at this point we do not know whether e.g. any .eh_frame
	     absolute relocations have been converted to PC-relative.  */
	  info->flags &= ~DF_TEXTREL;
	}

      if (! FUNC4 (info, DT_PLTGOT, 0))
	return FALSE;

      if (htab->is_vxworks)
	{
	  /* VxWorks uses .rela.dyn instead of .rel.dyn.  It does not
	     use any of the DT_MIPS_* tags.  */
	  if (FUNC22 (info, FALSE))
	    {
	      if (! FUNC4 (info, DT_RELA, 0))
		return FALSE;

	      if (! FUNC4 (info, DT_RELASZ, 0))
		return FALSE;

	      if (! FUNC4 (info, DT_RELAENT, 0))
		return FALSE;
	    }
	  if (htab->splt->size > 0)
	    {
	      if (! FUNC4 (info, DT_PLTREL, 0))
		return FALSE;

	      if (! FUNC4 (info, DT_JMPREL, 0))
		return FALSE;

	      if (! FUNC4 (info, DT_PLTRELSZ, 0))
		return FALSE;
	    }
	}
      else
	{
	  if (FUNC22 (info, FALSE))
	    {
	      if (! FUNC4 (info, DT_REL, 0))
		return FALSE;

	      if (! FUNC4 (info, DT_RELSZ, 0))
		return FALSE;

	      if (! FUNC4 (info, DT_RELENT, 0))
		return FALSE;
	    }

	  if (! FUNC4 (info, DT_MIPS_RLD_VERSION, 0))
	    return FALSE;

	  if (! FUNC4 (info, DT_MIPS_FLAGS, 0))
	    return FALSE;

	  if (! FUNC4 (info, DT_MIPS_BASE_ADDRESS, 0))
	    return FALSE;

	  if (! FUNC4 (info, DT_MIPS_LOCAL_GOTNO, 0))
	    return FALSE;

	  if (! FUNC4 (info, DT_MIPS_SYMTABNO, 0))
	    return FALSE;

	  if (! FUNC4 (info, DT_MIPS_UNREFEXTNO, 0))
	    return FALSE;

	  if (! FUNC4 (info, DT_MIPS_GOTSYM, 0))
	    return FALSE;

	  if (FUNC3 (dynobj) == ict_irix5
	      && ! FUNC4 (info, DT_MIPS_HIPAGENO, 0))
	    return FALSE;

	  if (FUNC3 (dynobj) == ict_irix6
	      && (FUNC12
		  (dynobj, FUNC6 (dynobj)))
	      && !FUNC4 (info, DT_MIPS_OPTIONS, 0))
	    return FALSE;
	}
    }

  return TRUE;
}