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
struct elf_strtab_hasn_entry {int dummy; } ;
struct elf_strtab_hash_entry {int dummy; } ;
struct elf_strtab_hash {int size; int alloced; int /*<<< orphan*/ ** array; scalar_t__ sec_size; int /*<<< orphan*/  table; } ;
typedef  int bfd_size_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  elf_strtab_hash_newfunc ; 
 int /*<<< orphan*/  FUNC2 (struct elf_strtab_hash*) ; 

struct elf_strtab_hash *
FUNC3 (void)
{
  struct elf_strtab_hash *table;
  bfd_size_type amt = sizeof (struct elf_strtab_hash);

  table = FUNC1 (amt);
  if (table == NULL)
    return NULL;

  if (!FUNC0 (&table->table, elf_strtab_hash_newfunc,
			    sizeof (struct elf_strtab_hash_entry)))
    {
      FUNC2 (table);
      return NULL;
    }

  table->sec_size = 0;
  table->size = 1;
  table->alloced = 64;
  amt = sizeof (struct elf_strtab_hasn_entry *);
  table->array = FUNC1 (table->alloced * amt);
  if (table->array == NULL)
    {
      FUNC2 (table);
      return NULL;
    }

  table->array[0] = NULL;

  return table;
}