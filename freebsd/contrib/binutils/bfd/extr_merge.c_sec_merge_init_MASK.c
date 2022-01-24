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
struct sec_merge_hash_entry {int dummy; } ;
struct sec_merge_hash {unsigned int entsize; int /*<<< orphan*/  strings; int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; scalar_t__ size; int /*<<< orphan*/  table; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 struct sec_merge_hash* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sec_merge_hash*) ; 
 int /*<<< orphan*/  sec_merge_hash_newfunc ; 

__attribute__((used)) static struct sec_merge_hash *
FUNC3 (unsigned int entsize, bfd_boolean strings)
{
  struct sec_merge_hash *table;

  table = FUNC1 (sizeof (struct sec_merge_hash));
  if (table == NULL)
    return NULL;

  if (! FUNC0 (&table->table, sec_merge_hash_newfunc,
			       sizeof (struct sec_merge_hash_entry), 16699))
    {
      FUNC2 (table);
      return NULL;
    }

  table->size = 0;
  table->first = NULL;
  table->last = NULL;
  table->entsize = entsize;
  table->strings = strings;

  return table;
}