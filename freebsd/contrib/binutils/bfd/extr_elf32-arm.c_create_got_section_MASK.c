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
struct elf32_arm_link_hash_table {int /*<<< orphan*/ * srelgot; void* sgotplt; void* sgot; scalar_t__ symbian_p; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct elf32_arm_link_hash_table*,char*) ; 
 int SEC_ALLOC ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LINKER_CREATED ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct elf32_arm_link_hash_table* FUNC6 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (bfd *dynobj, struct bfd_link_info *info)
{
  struct elf32_arm_link_hash_table *htab;

  htab = FUNC6 (info);
  /* BPABI objects never have a GOT, or associated sections.  */
  if (htab->symbian_p)
    return TRUE;

  if (! FUNC1 (dynobj, info))
    return FALSE;

  htab->sgot = FUNC3 (dynobj, ".got");
  htab->sgotplt = FUNC3 (dynobj, ".got.plt");
  if (!htab->sgot || !htab->sgotplt)
    FUNC2 ();

  htab->srelgot = FUNC4 (dynobj,
					       FUNC0 (htab, ".got"),
					       (SEC_ALLOC | SEC_LOAD
						| SEC_HAS_CONTENTS
						| SEC_IN_MEMORY
						| SEC_LINKER_CREATED
						| SEC_READONLY));
  if (htab->srelgot == NULL
      || ! FUNC5 (dynobj, htab->srelgot, 2))
    return FALSE;
  return TRUE;
}