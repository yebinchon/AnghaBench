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
struct ppc_elf_link_hash_table {int /*<<< orphan*/  relgot; void* sgotplt; scalar_t__ is_vxworks; int /*<<< orphan*/ * got; } ;
struct bfd_link_info {int dummy; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct ppc_elf_link_hash_table* FUNC6 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (bfd *abfd, struct bfd_link_info *info)
{
  struct ppc_elf_link_hash_table *htab;
  asection *s;
  flagword flags;

  if (!FUNC0 (abfd, info))
    return FALSE;

  htab = FUNC6 (info);
  htab->got = s = FUNC2 (abfd, ".got");
  if (s == NULL)
    FUNC1 ();

  if (htab->is_vxworks)
    {
      htab->sgotplt = FUNC2 (abfd, ".got.plt");
      if (!htab->sgotplt)
	FUNC1 ();
    }
  else
    {
      /* The powerpc .got has a blrl instruction in it.  Mark it
	 executable.  */
      flags = (SEC_ALLOC | SEC_LOAD | SEC_CODE | SEC_HAS_CONTENTS
	       | SEC_IN_MEMORY | SEC_LINKER_CREATED);
      if (!FUNC5 (abfd, s, flags))
	return FALSE;
    }

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	   | SEC_LINKER_CREATED | SEC_READONLY);
  htab->relgot = FUNC3 (abfd, ".rela.got", flags);
  if (!htab->relgot
      || ! FUNC4 (abfd, htab->relgot, 2))
    return FALSE;

  return TRUE;
}