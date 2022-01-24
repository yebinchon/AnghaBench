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
struct elf32_arm_link_hash_table {int plt_header_size; int plt_entry_size; void* srelbss; void* sdynbss; void* srelplt; void* splt; int /*<<< orphan*/  srelplt2; scalar_t__ vxworks_p; int /*<<< orphan*/  sgot; } ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 char* FUNC1 (struct elf32_arm_link_hash_table*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 struct elf32_arm_link_hash_table* FUNC6 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  elf32_arm_vxworks_exec_plt0_entry ; 
 int /*<<< orphan*/  elf32_arm_vxworks_exec_plt_entry ; 
 int /*<<< orphan*/  elf32_arm_vxworks_shared_plt_entry ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct bfd_link_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (bfd *dynobj, struct bfd_link_info *info)
{
  struct elf32_arm_link_hash_table *htab;

  htab = FUNC6 (info);
  if (!htab->sgot && !FUNC5 (dynobj, info))
    return FALSE;

  if (!FUNC2 (dynobj, info))
    return FALSE;

  htab->splt = FUNC4 (dynobj, ".plt");
  htab->srelplt = FUNC4 (dynobj,
					   FUNC1 (htab, ".plt"));
  htab->sdynbss = FUNC4 (dynobj, ".dynbss");
  if (!info->shared)
    htab->srelbss = FUNC4 (dynobj,
					     FUNC1 (htab, ".bss"));

  if (htab->vxworks_p)
    {
      if (!FUNC7 (dynobj, info, &htab->srelplt2))
	return FALSE;

      if (info->shared)
	{
	  htab->plt_header_size = 0;
	  htab->plt_entry_size
	    = 4 * FUNC0 (elf32_arm_vxworks_shared_plt_entry);
	}
      else
	{
	  htab->plt_header_size
	    = 4 * FUNC0 (elf32_arm_vxworks_exec_plt0_entry);
	  htab->plt_entry_size
	    = 4 * FUNC0 (elf32_arm_vxworks_exec_plt_entry);
	}
    }

  if (!htab->splt 
      || !htab->srelplt
      || !htab->sdynbss
      || (!info->shared && !htab->srelbss))
    FUNC3 ();

  return TRUE;
}