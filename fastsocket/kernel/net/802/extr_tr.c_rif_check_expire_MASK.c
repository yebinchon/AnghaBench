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
struct rif_cache {int last_used; struct rif_cache* next; } ;

/* Variables and functions */
 int RIF_TABLE_SIZE ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct rif_cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  rif_lock ; 
 struct rif_cache** rif_table ; 
 int /*<<< orphan*/  rif_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int sysctl_tr_rif_timeout ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,int) ; 

__attribute__((used)) static void FUNC6(unsigned long dummy)
{
	int i;
	unsigned long flags, next_interval = jiffies + sysctl_tr_rif_timeout/2;

	FUNC2(&rif_lock, flags);

	for(i =0; i < RIF_TABLE_SIZE; i++) {
		struct rif_cache *entry, **pentry;

		pentry = rif_table+i;
		while((entry=*pentry) != NULL) {
			unsigned long expires
				= entry->last_used + sysctl_tr_rif_timeout;

			if (FUNC5(expires, jiffies)) {
				*pentry = entry->next;
				FUNC0(entry);
			} else {
				pentry = &entry->next;

				if (FUNC4(expires, next_interval))
					next_interval = expires;
			}
		}
	}

	FUNC3(&rif_lock, flags);

	FUNC1(&rif_timer, next_interval);

}