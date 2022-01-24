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
struct bfd_link_info {int dummy; } ;
struct _bfd_sparc_elf_link_hash_table {void* sgotplt; scalar_t__ is_vxworks; int /*<<< orphan*/  word_align_power; int /*<<< orphan*/ * srelgot; int /*<<< orphan*/ * sgot; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 struct _bfd_sparc_elf_link_hash_table* FUNC2 (struct bfd_link_info*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (bfd *dynobj, struct bfd_link_info *info)
{
  struct _bfd_sparc_elf_link_hash_table *htab;

  if (! FUNC1 (dynobj, info))
    return FALSE;

  htab = FUNC2 (info);
  htab->sgot = FUNC3 (dynobj, ".got");
  FUNC0 (htab->sgot != NULL);

  htab->srelgot = FUNC4 (dynobj, ".rela.got",
					       SEC_ALLOC
					       | SEC_LOAD
					       | SEC_HAS_CONTENTS
					       | SEC_IN_MEMORY
					       | SEC_LINKER_CREATED
					       | SEC_READONLY);
  if (htab->srelgot == NULL
      || ! FUNC5 (dynobj, htab->srelgot,
				      htab->word_align_power))
    return FALSE;

  if (htab->is_vxworks)
    {
      htab->sgotplt = FUNC3 (dynobj, ".got.plt");
      if (!htab->sgotplt)
	return FALSE;
    }

  return TRUE;
}