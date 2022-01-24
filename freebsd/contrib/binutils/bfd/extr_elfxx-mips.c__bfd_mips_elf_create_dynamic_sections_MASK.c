#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mips_elf_link_hash_table {int plt_header_size; int plt_entry_size; int /*<<< orphan*/  srelplt2; int /*<<< orphan*/ * splt; int /*<<< orphan*/ * srelplt; int /*<<< orphan*/ * srelbss; int /*<<< orphan*/ * sdynbss; scalar_t__ is_vxworks; int /*<<< orphan*/  use_rld_obj_head; } ;
struct elf_link_hash_entry {int def_regular; void* type; scalar_t__ non_elf; } ;
struct bfd_link_info {scalar_t__ shared; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_2__ {int /*<<< orphan*/  collect; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSF_GLOBAL ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 void* STT_OBJECT ; 
 void* STT_SECTION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfd_link_info*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfd_link_hash_entry**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * bfd_abs_section_ptr ; 
 int /*<<< orphan*/  FUNC9 (struct bfd_link_info*,struct elf_link_hash_entry*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * bfd_und_section_ptr ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ ict_irix5 ; 
 scalar_t__ ict_none ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ ) ; 
 char** mips_elf_dynsym_rtproc_names ; 
 struct mips_elf_link_hash_table* FUNC18 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC19 (struct bfd_link_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_vxworks_exec_plt0_entry ; 
 int /*<<< orphan*/  mips_vxworks_exec_plt_entry ; 
 int /*<<< orphan*/  mips_vxworks_shared_plt0_entry ; 
 int /*<<< orphan*/  mips_vxworks_shared_plt_entry ; 

bfd_boolean
FUNC20 (bfd *abfd, struct bfd_link_info *info)
{
  struct elf_link_hash_entry *h;
  struct bfd_link_hash_entry *bh;
  flagword flags;
  register asection *s;
  const char * const *namep;
  struct mips_elf_link_hash_table *htab;

  htab = FUNC18 (info);
  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	   | SEC_LINKER_CREATED | SEC_READONLY);

  /* The psABI requires a read-only .dynamic section, but the VxWorks
     EABI doesn't.  */
  if (!htab->is_vxworks)
    {
      s = FUNC10 (abfd, ".dynamic");
      if (s != NULL)
	{
	  if (! FUNC13 (abfd, s, flags))
	    return FALSE;
	}
    }

  /* We need to create .got section.  */
  if (! FUNC17 (abfd, info, FALSE))
    return FALSE;

  if (! FUNC19 (info, TRUE))
    return FALSE;

  /* Create .stub section.  */
  if (FUNC10 (abfd,
			       FUNC4 (abfd)) == NULL)
    {
      s = FUNC11 (abfd,
				       FUNC4 (abfd),
				       flags | SEC_CODE);
      if (s == NULL
	  || ! FUNC12 (abfd, s,
					  FUNC3 (abfd)))
	return FALSE;
    }

  if ((FUNC2 (abfd) == ict_irix5 || FUNC2 (abfd) == ict_none)
      && !info->shared
      && FUNC10 (abfd, ".rld_map") == NULL)
    {
      s = FUNC11 (abfd, ".rld_map",
				       flags &~ (flagword) SEC_READONLY);
      if (s == NULL
	  || ! FUNC12 (abfd, s,
					  FUNC3 (abfd)))
	return FALSE;
    }

  /* On IRIX5, we adjust add some additional symbols and change the
     alignments of several sections.  There is no ABI documentation
     indicating that this is necessary on IRIX6, nor any evidence that
     the linker takes such action.  */
  if (FUNC2 (abfd) == ict_irix5)
    {
      for (namep = mips_elf_dynsym_rtproc_names; *namep != NULL; namep++)
	{
	  bh = NULL;
	  if (! (FUNC7
		 (info, abfd, *namep, BSF_GLOBAL, bfd_und_section_ptr, 0,
		  NULL, FALSE, FUNC15 (abfd)->collect, &bh)))
	    return FALSE;

	  h = (struct elf_link_hash_entry *) bh;
	  h->non_elf = 0;
	  h->def_regular = 1;
	  h->type = STT_SECTION;

	  if (! FUNC9 (info, h))
	    return FALSE;
	}

      /* We need to create a .compact_rel section.  */
      if (FUNC5 (abfd))
	{
	  if (!FUNC16 (abfd, info))
	    return FALSE;
	}

      /* Change alignments of some sections.  */
      s = FUNC10 (abfd, ".hash");
      if (s != NULL)
	FUNC12 (abfd, s, FUNC3 (abfd));
      s = FUNC10 (abfd, ".dynsym");
      if (s != NULL)
	FUNC12 (abfd, s, FUNC3 (abfd));
      s = FUNC10 (abfd, ".dynstr");
      if (s != NULL)
	FUNC12 (abfd, s, FUNC3 (abfd));
      s = FUNC10 (abfd, ".reginfo");
      if (s != NULL)
	FUNC12 (abfd, s, FUNC3 (abfd));
      s = FUNC10 (abfd, ".dynamic");
      if (s != NULL)
	FUNC12 (abfd, s, FUNC3 (abfd));
    }

  if (!info->shared)
    {
      const char *name;

      name = FUNC5 (abfd) ? "_DYNAMIC_LINK" : "_DYNAMIC_LINKING";
      bh = NULL;
      if (!(FUNC7
	    (info, abfd, name, BSF_GLOBAL, bfd_abs_section_ptr, 0,
	     NULL, FALSE, FUNC15 (abfd)->collect, &bh)))
	return FALSE;

      h = (struct elf_link_hash_entry *) bh;
      h->non_elf = 0;
      h->def_regular = 1;
      h->type = STT_SECTION;

      if (! FUNC9 (info, h))
	return FALSE;

      if (! FUNC18 (info)->use_rld_obj_head)
	{
	  /* __rld_map is a four byte word located in the .data section
	     and is filled in by the rtld to contain a pointer to
	     the _r_debug structure. Its symbol value will be set in
	     _bfd_mips_elf_finish_dynamic_symbol.  */
	  s = FUNC10 (abfd, ".rld_map");
	  FUNC1 (s != NULL);

	  name = FUNC5 (abfd) ? "__rld_map" : "__RLD_MAP";
	  bh = NULL;
	  if (!(FUNC7
		(info, abfd, name, BSF_GLOBAL, s, 0, NULL, FALSE,
		 FUNC15 (abfd)->collect, &bh)))
	    return FALSE;

	  h = (struct elf_link_hash_entry *) bh;
	  h->non_elf = 0;
	  h->def_regular = 1;
	  h->type = STT_OBJECT;

	  if (! FUNC9 (info, h))
	    return FALSE;
	}
    }

  if (htab->is_vxworks)
    {
      /* Create the .plt, .rela.plt, .dynbss and .rela.bss sections.
	 Also create the _PROCEDURE_LINKAGE_TABLE symbol.  */
      if (!FUNC6 (abfd, info))
	return FALSE;

      /* Cache the sections created above.  */
      htab->sdynbss = FUNC10 (abfd, ".dynbss");
      htab->srelbss = FUNC10 (abfd, ".rela.bss");
      htab->srelplt = FUNC10 (abfd, ".rela.plt");
      htab->splt = FUNC10 (abfd, ".plt");
      if (!htab->sdynbss
	  || (!htab->srelbss && !info->shared)
	  || !htab->srelplt
	  || !htab->splt)
	FUNC8 ();

      /* Do the usual VxWorks handling.  */
      if (!FUNC14 (abfd, info, &htab->srelplt2))
	return FALSE;

      /* Work out the PLT sizes.  */
      if (info->shared)
	{
	  htab->plt_header_size
	    = 4 * FUNC0 (mips_vxworks_shared_plt0_entry);
	  htab->plt_entry_size
	    = 4 * FUNC0 (mips_vxworks_shared_plt_entry);
	}
      else
	{
	  htab->plt_header_size
	    = 4 * FUNC0 (mips_vxworks_exec_plt0_entry);
	  htab->plt_entry_size
	    = 4 * FUNC0 (mips_vxworks_exec_plt_entry);
	}
    }

  return TRUE;
}