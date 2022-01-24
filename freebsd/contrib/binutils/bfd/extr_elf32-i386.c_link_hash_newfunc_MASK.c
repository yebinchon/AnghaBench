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
struct elf_i386_link_hash_entry {scalar_t__ tlsdesc_got; int /*<<< orphan*/  tls_type; int /*<<< orphan*/ * dyn_relocs; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
typedef  scalar_t__ bfd_vma ;

/* Variables and functions */
 int /*<<< orphan*/  GOT_UNKNOWN ; 
 struct bfd_hash_entry* FUNC0 (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ; 
 struct bfd_hash_entry* FUNC1 (struct bfd_hash_table*,int) ; 

__attribute__((used)) static struct bfd_hash_entry *
FUNC2 (struct bfd_hash_entry *entry,
		   struct bfd_hash_table *table,
		   const char *string)
{
  /* Allocate the structure if it has not already been allocated by a
     subclass.  */
  if (entry == NULL)
    {
      entry = FUNC1 (table,
				 sizeof (struct elf_i386_link_hash_entry));
      if (entry == NULL)
	return entry;
    }

  /* Call the allocation method of the superclass.  */
  entry = FUNC0 (entry, table, string);
  if (entry != NULL)
    {
      struct elf_i386_link_hash_entry *eh;

      eh = (struct elf_i386_link_hash_entry *) entry;
      eh->dyn_relocs = NULL;
      eh->tls_type = GOT_UNKNOWN;
      eh->tlsdesc_got = (bfd_vma) -1;
    }

  return entry;
}