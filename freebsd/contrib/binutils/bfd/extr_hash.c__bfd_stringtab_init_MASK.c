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
struct strtab_hash_entry {int dummy; } ;
struct bfd_strtab_hash {int /*<<< orphan*/  xcoff; int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; scalar_t__ size; int /*<<< orphan*/  table; } ;
typedef  int bfd_size_type ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bfd_strtab_hash* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfd_strtab_hash*) ; 
 int /*<<< orphan*/  strtab_hash_newfunc ; 

struct bfd_strtab_hash *
FUNC3 (void)
{
  struct bfd_strtab_hash *table;
  bfd_size_type amt = sizeof (* table);

  table = FUNC1 (amt);
  if (table == NULL)
    return NULL;

  if (!FUNC0 (&table->table, strtab_hash_newfunc,
			    sizeof (struct strtab_hash_entry)))
    {
      FUNC2 (table);
      return NULL;
    }

  table->size = 0;
  table->first = NULL;
  table->last = NULL;
  table->xcoff = FALSE;

  return table;
}