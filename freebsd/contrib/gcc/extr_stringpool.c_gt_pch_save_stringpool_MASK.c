#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nslots; int /*<<< orphan*/  entries; int /*<<< orphan*/  nelements; } ;
struct TYPE_3__ {int nslots; void* entries; int /*<<< orphan*/  nelements; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 TYPE_2__* ident_hash ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* spd ; 

void
FUNC2 (void)
{
  spd = FUNC0 (sizeof (*spd));
  spd->nslots = ident_hash->nslots;
  spd->nelements = ident_hash->nelements;
  spd->entries = FUNC0 (sizeof (spd->entries[0]) * spd->nslots);
  FUNC1 (spd->entries, ident_hash->entries,
	  spd->nslots * sizeof (spd->entries[0]));
}