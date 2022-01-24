#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ppc_elf_link_hash_table {scalar_t__ plt_type; int /*<<< orphan*/ * plt; void* relplt; int /*<<< orphan*/  srelplt2; scalar_t__ is_vxworks; int /*<<< orphan*/ * relsbss; void* relbss; int /*<<< orphan*/ * dynsbss; void* dynbss; int /*<<< orphan*/ * glink; int /*<<< orphan*/ * got; } ;
struct bfd_link_info {int /*<<< orphan*/  shared; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ PLT_VXWORKS ; 
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 struct ppc_elf_link_hash_table* FUNC9 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (bfd *abfd, struct bfd_link_info *info)
{
  struct ppc_elf_link_hash_table *htab;
  asection *s;
  flagword flags;

  htab = FUNC9 (info);

  if (htab->got == NULL
      && !FUNC8 (abfd, info))
    return FALSE;

  if (!FUNC0 (abfd, info))
    return FALSE;

  flags = (SEC_ALLOC | SEC_LOAD | SEC_READONLY | SEC_HAS_CONTENTS
	   | SEC_IN_MEMORY | SEC_LINKER_CREATED);

  s = FUNC3 (abfd, ".glink", flags | SEC_CODE);
  htab->glink = s;
  if (s == NULL
      || !FUNC5 (abfd, s, 4))
    return FALSE;

  htab->dynbss = FUNC2 (abfd, ".dynbss");
  s = FUNC4 (abfd, ".dynsbss",
				   SEC_ALLOC | SEC_LINKER_CREATED);
  htab->dynsbss = s;
  if (s == NULL)
    return FALSE;

  if (! info->shared)
    {
      htab->relbss = FUNC2 (abfd, ".rela.bss");
      s = FUNC4 (abfd, ".rela.sbss", flags);
      htab->relsbss = s;
      if (s == NULL
	  || ! FUNC5 (abfd, s, 2))
	return FALSE;
    }

  if (htab->is_vxworks
      && !FUNC7 (abfd, info, &htab->srelplt2))
    return FALSE;

  htab->relplt = FUNC2 (abfd, ".rela.plt");
  htab->plt = s = FUNC2 (abfd, ".plt");
  if (s == NULL)
    FUNC1 ();

  flags = SEC_ALLOC | SEC_CODE | SEC_LINKER_CREATED;
  if (htab->plt_type == PLT_VXWORKS)
    /* The VxWorks PLT is a loaded section with contents.  */
    flags |= SEC_HAS_CONTENTS | SEC_LOAD | SEC_READONLY;
  return FUNC6 (abfd, s, flags);
}