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
struct TYPE_3__ {int /*<<< orphan*/  dynobj; } ;
struct ppc_link_hash_table {scalar_t__ got; TYPE_1__ elf; } ;
struct bfd_link_info {int dummy; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_4__ {int /*<<< orphan*/ * relgot; int /*<<< orphan*/ * got; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 struct ppc_link_hash_table* FUNC6 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (bfd *abfd, struct bfd_link_info *info)
{
  asection *got, *relgot;
  flagword flags;
  struct ppc_link_hash_table *htab = FUNC6 (info);

  if (!htab->got)
    {
      if (! FUNC0 (htab->elf.dynobj, info))
	return FALSE;

      htab->got = FUNC2 (htab->elf.dynobj, ".got");
      if (!htab->got)
	FUNC1 ();
    }

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	   | SEC_LINKER_CREATED);

  got = FUNC3 (abfd, ".got", flags);
  if (!got
      || !FUNC4 (abfd, got, 3))
    return FALSE;

  relgot = FUNC3 (abfd, ".rela.got",
					       flags | SEC_READONLY);
  if (!relgot
      || ! FUNC4 (abfd, relgot, 3))
    return FALSE;

  FUNC5 (abfd)->got = got;
  FUNC5 (abfd)->relgot = relgot;
  return TRUE;
}