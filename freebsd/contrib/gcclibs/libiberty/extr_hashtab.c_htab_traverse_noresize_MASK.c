#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* htab_trav ) (scalar_t__*,scalar_t__) ;
typedef  TYPE_1__* htab_t ;
struct TYPE_4__ {scalar_t__* entries; } ;
typedef  scalar_t__ PTR ;

/* Variables and functions */
 scalar_t__ HTAB_DELETED_ENTRY ; 
 scalar_t__ HTAB_EMPTY_ENTRY ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__) ; 

void
FUNC2 (htab_t htab, htab_trav callback, PTR info)
{
  PTR *slot;
  PTR *limit;
  
  slot = htab->entries;
  limit = slot + FUNC0 (htab);

  do
    {
      PTR x = *slot;

      if (x != HTAB_EMPTY_ENTRY && x != HTAB_DELETED_ENTRY)
	if (!(*callback) (slot, info))
	  break;
    }
  while (++slot < limit);
}