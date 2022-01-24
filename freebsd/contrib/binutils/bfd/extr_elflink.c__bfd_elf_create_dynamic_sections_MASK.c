#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct elf_link_hash_entry {int dummy; } ;
struct elf_backend_data {int dynamic_sec_flags; TYPE_1__* s; scalar_t__ default_use_rela_p; scalar_t__ want_dynbss; scalar_t__ want_plt_sym; int /*<<< orphan*/  plt_alignment; scalar_t__ plt_readonly; scalar_t__ plt_not_loaded; } ;
struct bfd_link_info {int /*<<< orphan*/  shared; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_4__ {struct elf_link_hash_entry* hplt; } ;
struct TYPE_3__ {int /*<<< orphan*/  log_file_align; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 struct elf_link_hash_entry* FUNC1 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct bfd_link_info*) ; 
 struct elf_backend_data* FUNC5 (int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC6 (bfd *abfd, struct bfd_link_info *info)
{
  flagword flags, pltflags;
  struct elf_link_hash_entry *h;
  asection *s;
  const struct elf_backend_data *bed = FUNC5 (abfd);

  /* We need to create .plt, .rel[a].plt, .got, .got.plt, .dynbss, and
     .rel[a].bss sections.  */
  flags = bed->dynamic_sec_flags;

  pltflags = flags;
  if (bed->plt_not_loaded)
    /* We do not clear SEC_ALLOC here because we still want the OS to
       allocate space for the section; it's just that there's nothing
       to read in from the object file.  */
    pltflags &= ~ (SEC_CODE | SEC_LOAD | SEC_HAS_CONTENTS);
  else
    pltflags |= SEC_ALLOC | SEC_CODE | SEC_LOAD;
  if (bed->plt_readonly)
    pltflags |= SEC_READONLY;

  s = FUNC2 (abfd, ".plt", pltflags);
  if (s == NULL
      || ! FUNC3 (abfd, s, bed->plt_alignment))
    return FALSE;

  /* Define the symbol _PROCEDURE_LINKAGE_TABLE_ at the start of the
     .plt section.  */
  if (bed->want_plt_sym)
    {
      h = FUNC1 (abfd, info, s,
				       "_PROCEDURE_LINKAGE_TABLE_");
      FUNC4 (info)->hplt = h;
      if (h == NULL)
	return FALSE;
    }

  s = FUNC2 (abfd,
				   (bed->default_use_rela_p
				    ? ".rela.plt" : ".rel.plt"),
				   flags | SEC_READONLY);
  if (s == NULL
      || ! FUNC3 (abfd, s, bed->s->log_file_align))
    return FALSE;

  if (! FUNC0 (abfd, info))
    return FALSE;

  if (bed->want_dynbss)
    {
      /* The .dynbss section is a place to put symbols which are defined
	 by dynamic objects, are referenced by regular objects, and are
	 not functions.  We must allocate space for them in the process
	 image and use a R_*_COPY reloc to tell the dynamic linker to
	 initialize them at run time.  The linker script puts the .dynbss
	 section into the .bss section of the final image.  */
      s = FUNC2 (abfd, ".dynbss",
				       (SEC_ALLOC
					| SEC_LINKER_CREATED));
      if (s == NULL)
	return FALSE;

      /* The .rel[a].bss section holds copy relocs.  This section is not
	 normally needed.  We need to create it here, though, so that the
	 linker will map it to an output section.  We can't just create it
	 only if we need it, because we will not know whether we need it
	 until we have seen all the input files, and the first time the
	 main linker code calls BFD after examining all the input files
	 (size_dynamic_sections) the input sections have already been
	 mapped to the output sections.  If the section turns out not to
	 be needed, we can discard it later.  We will never need this
	 section when generating a shared object, since they do not use
	 copy relocs.  */
      if (! info->shared)
	{
	  s = FUNC2 (abfd,
					   (bed->default_use_rela_p
					    ? ".rela.bss" : ".rel.bss"),
					   flags | SEC_READONLY);
	  if (s == NULL
	      || ! FUNC3 (abfd, s, bed->s->log_file_align))
	    return FALSE;
	}
    }

  return TRUE;
}