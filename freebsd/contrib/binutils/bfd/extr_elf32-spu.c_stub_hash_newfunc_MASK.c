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
struct spu_stub_hash_entry {scalar_t__ delta; scalar_t__ off; scalar_t__ target_off; int /*<<< orphan*/ * target_section; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;

/* Variables and functions */
 struct bfd_hash_entry* FUNC0 (struct bfd_hash_table*,int) ; 
 struct bfd_hash_entry* FUNC1 (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ; 

__attribute__((used)) static struct bfd_hash_entry *
FUNC2 (struct bfd_hash_entry *entry,
		   struct bfd_hash_table *table,
		   const char *string)
{
  /* Allocate the structure if it has not already been allocated by a
     subclass.  */
  if (entry == NULL)
    {
      entry = FUNC0 (table, sizeof (struct spu_stub_hash_entry));
      if (entry == NULL)
	return entry;
    }

  /* Call the allocation method of the superclass.  */
  entry = FUNC1 (entry, table, string);
  if (entry != NULL)
    {
      struct spu_stub_hash_entry *sh = (struct spu_stub_hash_entry *) entry;

      sh->target_section = NULL;
      sh->target_off = 0;
      sh->off = 0;
      sh->delta = 0;
    }

  return entry;
}