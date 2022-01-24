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
struct TYPE_6__ {scalar_t__* entries; } ;
typedef  scalar_t__ PTR ;

/* Variables and functions */
 scalar_t__ HTAB_DELETED_ENTRY ; 
 scalar_t__ HTAB_EMPTY_ENTRY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (size_t,TYPE_1__*) ; 
 size_t FUNC2 (size_t,TYPE_1__*) ; 
 size_t FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static PTR *
FUNC4 (htab_t htab, hashval_t hash)
{
  hashval_t index = FUNC1 (hash, htab);
  size_t size = FUNC3 (htab);
  PTR *slot = htab->entries + index;
  hashval_t hash2;

  if (*slot == HTAB_EMPTY_ENTRY)
    return slot;
  else if (*slot == HTAB_DELETED_ENTRY)
    FUNC0 ();

  hash2 = FUNC2 (hash, htab);
  for (;;)
    {
      index += hash2;
      if (index >= size)
	index -= size;

      slot = htab->entries + index;
      if (*slot == HTAB_EMPTY_ENTRY)
	return slot;
      else if (*slot == HTAB_DELETED_ENTRY)
	FUNC0 ();
    }
}