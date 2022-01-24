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
struct raparms {struct raparms* p_next; } ;
struct TYPE_2__ {struct raparms* pb_head; } ;

/* Variables and functions */
 unsigned int RAPARM_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct raparms*) ; 
 TYPE_1__* raparm_hash ; 

void
FUNC2(void)
{
	struct raparms *raparm, *last_raparm;
	unsigned int i;

	FUNC0("nfsd: freeing readahead buffers.\n");

	for (i = 0; i < RAPARM_HASH_SIZE; i++) {
		raparm = raparm_hash[i].pb_head;
		while(raparm) {
			last_raparm = raparm;
			raparm = raparm->p_next;
			FUNC1(last_raparm);
		}
		raparm_hash[i].pb_head = NULL;
	}
}