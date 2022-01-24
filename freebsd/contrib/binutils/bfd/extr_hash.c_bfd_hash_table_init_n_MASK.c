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
struct objalloc {int dummy; } ;
struct bfd_hash_table {unsigned int size; unsigned int entsize; struct bfd_hash_entry* (* newfunc ) (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;scalar_t__ frozen; scalar_t__ count; int /*<<< orphan*/ * table; int /*<<< orphan*/ * memory; } ;
struct bfd_hash_entry {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bfd_error_no_memory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (struct objalloc*,unsigned int) ; 
 scalar_t__ FUNC3 () ; 

bfd_boolean
FUNC4 (struct bfd_hash_table *table,
		       struct bfd_hash_entry *(*newfunc) (struct bfd_hash_entry *,
							  struct bfd_hash_table *,
							  const char *),
		       unsigned int entsize,
		       unsigned int size)
{
  unsigned int alloc;

  alloc = size * sizeof (struct bfd_hash_entry *);

  table->memory = (void *) FUNC3 ();
  if (table->memory == NULL)
    {
      FUNC0 (bfd_error_no_memory);
      return FALSE;
    }
  table->table = FUNC2 ((struct objalloc *) table->memory, alloc);
  if (table->table == NULL)
    {
      FUNC0 (bfd_error_no_memory);
      return FALSE;
    }
  FUNC1 ((void *) table->table, 0, alloc);
  table->size = size;
  table->entsize = entsize;
  table->count = 0;
  table->frozen = 0;
  table->newfunc = newfunc;
  return TRUE;
}