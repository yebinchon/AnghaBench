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
typedef  void irda_queue_t ;
struct TYPE_4__ {int /*<<< orphan*/  hb_spinlock; } ;
typedef  TYPE_1__ hashbin_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,long,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void* FUNC3( hashbin_t* hashbin, long hashv, const char* name )
{
	unsigned long flags = 0;
	irda_queue_t* entry;

	/* Synchronize */
	FUNC1(&hashbin->hb_spinlock, flags);

	/*
	 * Search for entry
	 */
	entry = (irda_queue_t* ) FUNC0( hashbin, hashv, name );

	/* Release lock */
	FUNC2(&hashbin->hb_spinlock, flags);

	return entry;
}