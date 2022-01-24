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
struct bfd_link_info {int dummy; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_4__ {int /*<<< orphan*/ * got; int /*<<< orphan*/ * gotobj; } ;
struct TYPE_3__ {struct elf_link_hash_entry* hgot; struct elf_link_hash_entry* hplt; } ;

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
 struct elf_link_hash_entry* FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 scalar_t__ elf64_alpha_use_secureplt ; 
 TYPE_1__* FUNC5 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (bfd *abfd, struct bfd_link_info *info)
{
  asection *s;
  flagword flags;
  struct elf_link_hash_entry *h;

  /* We need to create .plt, .rela.plt, .got, and .rela.got sections.  */

  flags = (SEC_ALLOC | SEC_LOAD | SEC_CODE | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	   | SEC_LINKER_CREATED
	   | (elf64_alpha_use_secureplt ? SEC_READONLY : 0));
  s = FUNC2 (abfd, ".plt", flags);
  if (s == NULL || ! FUNC3 (abfd, s, 4))
    return FALSE;

  /* Define the symbol _PROCEDURE_LINKAGE_TABLE_ at the start of the
     .plt section.  */
  h = FUNC0 (abfd, info, s,
				   "_PROCEDURE_LINKAGE_TABLE_");
  FUNC5 (info)->hplt = h;
  if (h == NULL)
    return FALSE;

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	   | SEC_LINKER_CREATED | SEC_READONLY);
  s = FUNC2 (abfd, ".rela.plt", flags);
  if (s == NULL || ! FUNC3 (abfd, s, 3))
    return FALSE;

  if (elf64_alpha_use_secureplt)
    {
      flags = SEC_ALLOC | SEC_LINKER_CREATED;
      s = FUNC2 (abfd, ".got.plt", flags);
      if (s == NULL || ! FUNC3 (abfd, s, 3))
	return FALSE;
    }

  /* We may or may not have created a .got section for this object, but
     we definitely havn't done the rest of the work.  */

  if (FUNC1(abfd)->gotobj == NULL)
    {
      if (!FUNC4 (abfd, info))
	return FALSE;
    }

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	   | SEC_LINKER_CREATED | SEC_READONLY);
  s = FUNC2 (abfd, ".rela.got", flags);
  if (s == NULL
      || !FUNC3 (abfd, s, 3))
    return FALSE;

  /* Define the symbol _GLOBAL_OFFSET_TABLE_ at the start of the
     dynobj's .got section.  We don't do this in the linker script
     because we don't want to define the symbol if we are not creating
     a global offset table.  */
  h = FUNC0 (abfd, info, FUNC1(abfd)->got,
				   "_GLOBAL_OFFSET_TABLE_");
  FUNC5 (info)->hgot = h;
  if (h == NULL)
    return FALSE;

  return TRUE;
}