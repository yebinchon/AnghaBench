#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int dummy; } ;
struct _bfd_sparc_elf_link_hash_table {TYPE_1__* splt; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {scalar_t__ contents; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 struct _bfd_sparc_elf_link_hash_table* FUNC1 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * sparc_vxworks_shared_plt0_entry ; 

__attribute__((used)) static void
FUNC3 (bfd *output_bfd, struct bfd_link_info *info)
{
  struct _bfd_sparc_elf_link_hash_table *htab;
  unsigned int i;

  htab = FUNC1 (info);
  for (i = 0; i < FUNC0 (sparc_vxworks_shared_plt0_entry); i++)
    FUNC2 (output_bfd, sparc_vxworks_shared_plt0_entry[i],
		htab->splt->contents + i * 4);
}