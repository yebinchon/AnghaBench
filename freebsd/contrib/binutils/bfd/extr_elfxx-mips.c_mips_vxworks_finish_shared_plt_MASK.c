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
struct mips_elf_link_hash_table {TYPE_1__* splt; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {scalar_t__ contents; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mips_elf_link_hash_table* FUNC2 (struct bfd_link_info*) ; 
 int /*<<< orphan*/ * mips_vxworks_shared_plt0_entry ; 

__attribute__((used)) static void
FUNC3 (bfd *output_bfd, struct bfd_link_info *info)
{
  unsigned int i;
  struct mips_elf_link_hash_table *htab;

  htab = FUNC2 (info);

  /* We just need to copy the entry byte-by-byte.  */
  for (i = 0; i < FUNC0 (mips_vxworks_shared_plt0_entry); i++)
    FUNC1 (output_bfd, mips_vxworks_shared_plt0_entry[i],
		htab->splt->contents + i * 4);
}