#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct inet_frags {TYPE_1__ secret_timer; scalar_t__ secret_interval; scalar_t__ rnd; int /*<<< orphan*/  lock; int /*<<< orphan*/ * hash; } ;

/* Variables and functions */
 int INETFRAGS_HASHSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  inet_frag_secret_rebuild ; 
 int jiffies ; 
 int num_physpages ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC4(struct inet_frags *f)
{
	int i;

	for (i = 0; i < INETFRAGS_HASHSZ; i++)
		FUNC0(&f->hash[i]);

	FUNC2(&f->lock);

	f->rnd = (u32) ((num_physpages ^ (num_physpages>>7)) ^
				   (jiffies ^ (jiffies >> 6)));

	FUNC3(&f->secret_timer, inet_frag_secret_rebuild,
			(unsigned long)f);
	f->secret_timer.expires = jiffies + f->secret_interval;
	FUNC1(&f->secret_timer);
}