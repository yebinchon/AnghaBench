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
struct elf64_x86_64_link_hash_table {int /*<<< orphan*/ * srelgot; void* sgotplt; void* sgot; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct elf64_x86_64_link_hash_table* FUNC5 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (bfd *dynobj, struct bfd_link_info *info)
{
  struct elf64_x86_64_link_hash_table *htab;

  if (! FUNC0 (dynobj, info))
    return FALSE;

  htab = FUNC5 (info);
  htab->sgot = FUNC2 (dynobj, ".got");
  htab->sgotplt = FUNC2 (dynobj, ".got.plt");
  if (!htab->sgot || !htab->sgotplt)
    FUNC1 ();

  htab->srelgot = FUNC3 (dynobj, ".rela.got",
					       (SEC_ALLOC | SEC_LOAD
						| SEC_HAS_CONTENTS
						| SEC_IN_MEMORY
						| SEC_LINKER_CREATED
						| SEC_READONLY));
  if (htab->srelgot == NULL
      || ! FUNC4 (dynobj, htab->srelgot, 3))
    return FALSE;
  return TRUE;
}