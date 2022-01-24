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
struct elf64_x86_64_link_hash_table {void* srelbss; void* sdynbss; void* srelplt; void* splt; int /*<<< orphan*/  sgot; } ;
struct bfd_link_info {int /*<<< orphan*/  shared; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 struct elf64_x86_64_link_hash_table* FUNC4 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (bfd *dynobj, struct bfd_link_info *info)
{
  struct elf64_x86_64_link_hash_table *htab;

  htab = FUNC4 (info);
  if (!htab->sgot && !FUNC3 (dynobj, info))
    return FALSE;

  if (!FUNC0 (dynobj, info))
    return FALSE;

  htab->splt = FUNC2 (dynobj, ".plt");
  htab->srelplt = FUNC2 (dynobj, ".rela.plt");
  htab->sdynbss = FUNC2 (dynobj, ".dynbss");
  if (!info->shared)
    htab->srelbss = FUNC2 (dynobj, ".rela.bss");

  if (!htab->splt || !htab->srelplt || !htab->sdynbss
      || (!info->shared && !htab->srelbss))
    FUNC1 ();

  return TRUE;
}