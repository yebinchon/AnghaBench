#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * dynobj; } ;
struct ppc_elf_link_hash_table {TYPE_1__ elf; } ;
struct bfd_link_info {int dummy; } ;
typedef  int flagword ;
struct TYPE_6__ {int /*<<< orphan*/ * section; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ elf_linker_section_t ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ppc_elf_link_hash_table*,TYPE_2__*) ; 
 struct ppc_elf_link_hash_table* FUNC3 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd,
			       struct bfd_link_info *info,
			       flagword flags,
			       elf_linker_section_t *lsect)
{
  struct ppc_elf_link_hash_table *htab = FUNC3 (info);
  asection *s;

  flags |= (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	    | SEC_LINKER_CREATED);

  /* Record the first bfd that needs the special sections.  */
  if (!htab->elf.dynobj)
    htab->elf.dynobj = abfd;

  s = FUNC0 (htab->elf.dynobj,
					  lsect->name,
					  flags);
  if (s == NULL
      || !FUNC1 (htab->elf.dynobj, s, 2))
    return FALSE;
  lsect->section = s;

  return FUNC2 (htab, lsect);
}