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
struct TYPE_2__ {size_t index; } ;
struct elf_strtab_hash_entry {scalar_t__ len; TYPE_1__ u; int /*<<< orphan*/  refcount; } ;
struct elf_strtab_hash {scalar_t__ sec_size; int size; int alloced; struct elf_strtab_hash_entry** array; int /*<<< orphan*/  table; } ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct elf_strtab_hash_entry** FUNC2 (struct elf_strtab_hash_entry**,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

bfd_size_type
FUNC4 (struct elf_strtab_hash *tab,
		     const char *str,
		     bfd_boolean copy)
{
  register struct elf_strtab_hash_entry *entry;

  /* We handle this specially, since we don't want to do refcounting
     on it.  */
  if (*str == '\0')
    return 0;

  FUNC0 (tab->sec_size == 0);
  entry = (struct elf_strtab_hash_entry *)
	  FUNC1 (&tab->table, str, TRUE, copy);

  if (entry == NULL)
    return (bfd_size_type) -1;

  entry->refcount++;
  if (entry->len == 0)
    {
      entry->len = FUNC3 (str) + 1;
      /* 2G strings lose.  */
      FUNC0 (entry->len > 0);
      if (tab->size == tab->alloced)
	{
	  bfd_size_type amt = sizeof (struct elf_strtab_hash_entry *);
	  tab->alloced *= 2;
	  tab->array = FUNC2 (tab->array, tab->alloced * amt);
	  if (tab->array == NULL)
	    return (bfd_size_type) -1;
	}

      entry->u.index = tab->size++;
      tab->array[entry->u.index] = entry;
    }
  return entry->u.index;
}