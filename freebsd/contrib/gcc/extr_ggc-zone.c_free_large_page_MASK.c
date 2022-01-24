#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ page; int /*<<< orphan*/  large_p; TYPE_1__* zone; } ;
struct large_page_entry {TYPE_2__ common; } ;
struct TYPE_6__ {int /*<<< orphan*/  debug_file; } ;
struct TYPE_4__ {char* name; } ;
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 TYPE_3__ G ; 
 int GGC_DEBUG_LEVEL ; 
 scalar_t__ SMALL_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct large_page_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4 (struct large_page_entry *entry)
{
  if (GGC_DEBUG_LEVEL >= 2)
    FUNC0 (G.debug_file,
	     "Deallocating %s page at %d, data %ld-%ld\n",
	     entry->common.zone->name, (PTR) entry,
	     entry->common.page, entry->common.page + SMALL_PAGE_SIZE - 1);

  FUNC2 (entry->common.large_p);

  FUNC3 (entry->common.page, NULL);
  FUNC1 (entry);
}