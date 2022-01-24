#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* htab_t ;
typedef  size_t hashval_t ;
struct TYPE_6__ {scalar_t__* entries; scalar_t__ (* eq_f ) (scalar_t__,scalar_t__ const) ;int /*<<< orphan*/  collisions; int /*<<< orphan*/  searches; } ;
typedef  scalar_t__ PTR ;

/* Variables and functions */
 scalar_t__ HTAB_DELETED_ENTRY ; 
 scalar_t__ HTAB_EMPTY_ENTRY ; 
 size_t FUNC0 (size_t,TYPE_1__*) ; 
 size_t FUNC1 (size_t,TYPE_1__*) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__ const) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__ const) ; 

PTR
FUNC5 (htab_t htab, const PTR element, hashval_t hash)
{
  hashval_t index, hash2;
  size_t size;
  PTR entry;

  htab->searches++;
  size = FUNC2 (htab);
  index = FUNC0 (hash, htab);

  entry = htab->entries[index];
  if (entry == HTAB_EMPTY_ENTRY
      || (entry != HTAB_DELETED_ENTRY && (*htab->eq_f) (entry, element)))
    return entry;

  hash2 = FUNC1 (hash, htab);
  for (;;)
    {
      htab->collisions++;
      index += hash2;
      if (index >= size)
	index -= size;

      entry = htab->entries[index];
      if (entry == HTAB_EMPTY_ENTRY
	  || (entry != HTAB_DELETED_ENTRY && (*htab->eq_f) (entry, element)))
	return entry;
    }
}