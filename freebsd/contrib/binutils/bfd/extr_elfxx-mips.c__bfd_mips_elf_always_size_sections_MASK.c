#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct mips_got_info {int local_gotno; int global_gotno; int tls_gotno; int tls_assigned_gotno; int /*<<< orphan*/  got_entries; TYPE_1__* global_gotsym; } ;
struct mips_elf_link_hash_table {int function_stub_size; scalar_t__ is_vxworks; int /*<<< orphan*/  mips16_stubs_seen; } ;
struct mips_elf_count_tls_arg {scalar_t__ needed; struct bfd_link_info* info; } ;
struct bfd_link_info {TYPE_2__* input_bfds; scalar_t__ relocatable; } ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_18__ {TYPE_3__* sections; struct TYPE_18__* link_next; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_19__ {int flags; int size; struct TYPE_19__* next; } ;
typedef  TYPE_3__ asection ;
struct TYPE_20__ {int dynsymcount; TYPE_2__* dynobj; } ;
struct TYPE_17__ {int dynindx; } ;
typedef  int /*<<< orphan*/  Elf32_External_RegInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (struct bfd_link_info*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int MIPS_FUNCTION_STUB_BIG_SIZE ; 
 int MIPS_FUNCTION_STUB_NORMAL_SIZE ; 
 int SEC_ALLOC ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,int) ; 
 int FUNC4 (TYPE_2__*,struct bfd_link_info*) ; 
 TYPE_8__* FUNC5 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,struct mips_elf_count_tls_arg*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mips_got_info*) ; 
 int /*<<< orphan*/  mips_elf_check_mips16_stubs ; 
 int /*<<< orphan*/  mips_elf_count_global_tls_entries ; 
 struct mips_got_info* FUNC8 (TYPE_2__*,TYPE_3__**) ; 
 struct mips_elf_link_hash_table* FUNC9 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  mips_elf_initialize_tls_index ; 
 int /*<<< orphan*/  FUNC10 (struct mips_elf_link_hash_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct bfd_link_info*,struct mips_got_info*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mips_got_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct bfd_link_info*,int) ; 

bfd_boolean
FUNC14 (bfd *output_bfd,
				    struct bfd_link_info *info)
{
  asection *ri;

  bfd *dynobj;
  asection *s;
  struct mips_got_info *g;
  int i;
  bfd_size_type loadable_size = 0;
  bfd_size_type local_gotno;
  bfd_size_type dynsymcount;
  bfd *sub;
  struct mips_elf_count_tls_arg count_tls_arg;
  struct mips_elf_link_hash_table *htab;

  htab = FUNC9 (info);

  /* The .reginfo section has a fixed size.  */
  ri = FUNC2 (output_bfd, ".reginfo");
  if (ri != NULL)
    FUNC3 (output_bfd, ri, sizeof (Elf32_External_RegInfo));

  if (! (info->relocatable
	 || ! FUNC9 (info)->mips16_stubs_seen))
    FUNC10 (FUNC9 (info),
				 mips_elf_check_mips16_stubs, NULL);

  dynobj = FUNC5 (info)->dynobj;
  if (dynobj == NULL)
    /* Relocatable links don't have it.  */
    return TRUE;

  g = FUNC8 (dynobj, &s);
  if (s == NULL)
    return TRUE;

  /* Calculate the total loadable size of the output.  That
     will give us the maximum number of GOT_PAGE entries
     required.  */
  for (sub = info->input_bfds; sub; sub = sub->link_next)
    {
      asection *subsection;

      for (subsection = sub->sections;
	   subsection;
	   subsection = subsection->next)
	{
	  if ((subsection->flags & SEC_ALLOC) == 0)
	    continue;
	  loadable_size += ((subsection->size + 0xf)
			    &~ (bfd_size_type) 0xf);
	}
    }

  /* There has to be a global GOT entry for every symbol with
     a dynamic symbol table index of DT_MIPS_GOTSYM or
     higher.  Therefore, it make sense to put those symbols
     that need GOT entries at the end of the symbol table.  We
     do that here.  */
  if (! FUNC13 (info, 1))
    return FALSE;

  if (g->global_gotsym != NULL)
    i = FUNC5 (info)->dynsymcount - g->global_gotsym->dynindx;
  else
    /* If there are no global symbols, or none requiring
       relocations, then GLOBAL_GOTSYM will be NULL.  */
    i = 0;

  /* Get a worst-case estimate of the number of dynamic symbols needed.
     At this point, dynsymcount does not account for section symbols
     and count_section_dynsyms may overestimate the number that will
     be needed.  */
  dynsymcount = (FUNC5 (info)->dynsymcount
		 + FUNC4 (output_bfd, info));

  /* Determine the size of one stub entry.  */
  htab->function_stub_size = (dynsymcount > 0x10000
			      ? MIPS_FUNCTION_STUB_BIG_SIZE
			      : MIPS_FUNCTION_STUB_NORMAL_SIZE);

  /* In the worst case, we'll get one stub per dynamic symbol, plus
     one to account for the dummy entry at the end required by IRIX
     rld.  */
  loadable_size += htab->function_stub_size * (i + 1);

  if (htab->is_vxworks)
    /* There's no need to allocate page entries for VxWorks; R_MIPS_GOT16
       relocations against local symbols evaluate to "G", and the EABI does
       not include R_MIPS_GOT_PAGE.  */
    local_gotno = 0;
  else
    /* Assume there are two loadable segments consisting of contiguous
       sections.  Is 5 enough?  */
    local_gotno = (loadable_size >> 16) + 5;

  g->local_gotno += local_gotno;
  s->size += g->local_gotno * FUNC1 (output_bfd);

  g->global_gotno = i;
  s->size += i * FUNC1 (output_bfd);

  /* We need to calculate tls_gotno for global symbols at this point
     instead of building it up earlier, to avoid doublecounting
     entries for one global symbol from multiple input files.  */
  count_tls_arg.info = info;
  count_tls_arg.needed = 0;
  FUNC6 (FUNC5 (info),
			  mips_elf_count_global_tls_entries,
			  &count_tls_arg);
  g->tls_gotno += count_tls_arg.needed;
  s->size += g->tls_gotno * FUNC1 (output_bfd);

  FUNC12 (g);

  /* VxWorks does not support multiple GOTs.  It initializes $gp to
     __GOTT_BASE__[__GOTT_INDEX__], the value of which is set by the
     dynamic loader.  */
  if (!htab->is_vxworks && s->size > FUNC0 (info))
    {
      if (! FUNC11 (output_bfd, info, g, s, local_gotno))
	return FALSE;
    }
  else
    {
      /* Set up TLS entries for the first GOT.  */
      g->tls_assigned_gotno = g->global_gotno + g->local_gotno;
      FUNC7 (g->got_entries, mips_elf_initialize_tls_index, g);
    }

  return TRUE;
}