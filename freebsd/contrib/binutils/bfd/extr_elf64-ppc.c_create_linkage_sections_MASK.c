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
struct ppc_link_hash_table {int /*<<< orphan*/ * relbrlt; int /*<<< orphan*/ * brlt; int /*<<< orphan*/ * glink; int /*<<< orphan*/ * sfpr; } ;
struct bfd_link_info {int /*<<< orphan*/  shared; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

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
 void* FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct ppc_link_hash_table* FUNC2 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (bfd *dynobj, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab;
  flagword flags;

  htab = FUNC2 (info);

  /* Create .sfpr for code to save and restore fp regs.  */
  flags = (SEC_ALLOC | SEC_LOAD | SEC_CODE | SEC_READONLY
	   | SEC_HAS_CONTENTS | SEC_IN_MEMORY | SEC_LINKER_CREATED);
  htab->sfpr = FUNC0 (dynobj, ".sfpr",
						   flags);
  if (htab->sfpr == NULL
      || ! FUNC1 (dynobj, htab->sfpr, 2))
    return FALSE;

  /* Create .glink for lazy dynamic linking support.  */
  htab->glink = FUNC0 (dynobj, ".glink",
						    flags);
  if (htab->glink == NULL
      || ! FUNC1 (dynobj, htab->glink, 3))
    return FALSE;

  /* Create branch lookup table for plt_branch stubs.  */
  flags = (SEC_ALLOC | SEC_LOAD
	   | SEC_HAS_CONTENTS | SEC_IN_MEMORY | SEC_LINKER_CREATED);
  htab->brlt = FUNC0 (dynobj, ".branch_lt",
						   flags);
  if (htab->brlt == NULL
      || ! FUNC1 (dynobj, htab->brlt, 3))
    return FALSE;

  if (!info->shared)
    return TRUE;

  flags = (SEC_ALLOC | SEC_LOAD | SEC_READONLY
	   | SEC_HAS_CONTENTS | SEC_IN_MEMORY | SEC_LINKER_CREATED);
  htab->relbrlt = FUNC0 (dynobj,
						      ".rela.branch_lt",
						      flags);
  if (!htab->relbrlt
      || ! FUNC1 (dynobj, htab->relbrlt, 3))
    return FALSE;

  return TRUE;
}