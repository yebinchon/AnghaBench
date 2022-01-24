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
struct TYPE_2__ {char const* string; } ;
struct strtab_hash_entry {scalar_t__ index; struct strtab_hash_entry* next; TYPE_1__ root; } ;
struct bfd_strtab_hash {scalar_t__ size; struct strtab_hash_entry* last; struct strtab_hash_entry* first; scalar_t__ xcoff; int /*<<< orphan*/  table; } ;
typedef  scalar_t__ bfd_size_type ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (char const*) ; 
 struct strtab_hash_entry* FUNC2 (struct bfd_strtab_hash*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 

bfd_size_type
FUNC3 (struct bfd_strtab_hash *tab,
		    const char *str,
		    bfd_boolean hash,
		    bfd_boolean copy)
{
  struct strtab_hash_entry *entry;

  if (hash)
    {
      entry = FUNC2 (tab, str, TRUE, copy);
      if (entry == NULL)
	return (bfd_size_type) -1;
    }
  else
    {
      entry = FUNC0 (&tab->table, sizeof (* entry));
      if (entry == NULL)
	return (bfd_size_type) -1;
      if (! copy)
	entry->root.string = str;
      else
	{
	  char *n;

	  n = FUNC0 (&tab->table, FUNC1 (str) + 1);
	  if (n == NULL)
	    return (bfd_size_type) -1;
	  entry->root.string = n;
	}
      entry->index = (bfd_size_type) -1;
      entry->next = NULL;
    }

  if (entry->index == (bfd_size_type) -1)
    {
      entry->index = tab->size;
      tab->size += FUNC1 (str) + 1;
      if (tab->xcoff)
	{
	  entry->index += 2;
	  tab->size += 2;
	}
      if (tab->first == NULL)
	tab->first = entry;
      else
	tab->last->next = entry;
      tab->last = entry;
    }

  return entry->index;
}