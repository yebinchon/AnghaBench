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
struct TYPE_3__ {unsigned long expires; } ;
struct TYPE_4__ {TYPE_1__ unres; } ;
struct mfc6_cache {struct mfc6_cache* next; TYPE_2__ mfc_un; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct mfc6_cache*) ; 
 int /*<<< orphan*/  ipmr_expire_timer ; 
 unsigned long jiffies ; 
 struct mfc6_cache* mfc_unres_queue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned long dummy)
{
	unsigned long now = jiffies;
	unsigned long expires = 10 * HZ;
	struct mfc6_cache *c, **cp;

	cp = &mfc_unres_queue;

	while ((c = *cp) != NULL) {
		if (FUNC2(c->mfc_un.unres.expires, now)) {
			/* not yet... */
			unsigned long interval = c->mfc_un.unres.expires - now;
			if (interval < expires)
				expires = interval;
			cp = &c->next;
			continue;
		}

		*cp = c->next;
		FUNC0(c);
	}

	if (mfc_unres_queue != NULL)
		FUNC1(&ipmr_expire_timer, jiffies + expires);
}