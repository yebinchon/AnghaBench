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
struct coff_link_hash_table {int /*<<< orphan*/  root; int /*<<< orphan*/  stab_info; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bfd_hash_entry* (*) (struct bfd_hash_entry*,struct bfd_hash_table*,char const*),unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

bfd_boolean
FUNC2 (struct coff_link_hash_table *table,
				bfd *abfd,
				struct bfd_hash_entry *(*newfunc) (struct bfd_hash_entry *,
								   struct bfd_hash_table *,
								   const char *),
				unsigned int entsize)
{
  FUNC1 (&table->stab_info, 0, sizeof (table->stab_info));
  return FUNC0 (&table->root, abfd, newfunc, entsize);
}