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
struct ppc_link_hash_table {void* relbss; void* dynbss; void* relplt; void* plt; void* got; } ;
struct bfd_link_info {int /*<<< orphan*/  shared; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ppc_link_hash_table* FUNC3 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *dynobj, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab;

  if (!FUNC0 (dynobj, info))
    return FALSE;

  htab = FUNC3 (info);
  if (!htab->got)
    htab->got = FUNC2 (dynobj, ".got");
  htab->plt = FUNC2 (dynobj, ".plt");
  htab->relplt = FUNC2 (dynobj, ".rela.plt");
  htab->dynbss = FUNC2 (dynobj, ".dynbss");
  if (!info->shared)
    htab->relbss = FUNC2 (dynobj, ".rela.bss");

  if (!htab->got || !htab->plt || !htab->relplt || !htab->dynbss
      || (!info->shared && !htab->relbss))
    FUNC1 ();

  return TRUE;
}