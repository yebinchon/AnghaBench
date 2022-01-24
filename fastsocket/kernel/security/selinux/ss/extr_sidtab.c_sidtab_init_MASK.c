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
struct sidtab {int next_sid; int /*<<< orphan*/  lock; scalar_t__ shutdown; scalar_t__ nel; int /*<<< orphan*/ ** htable; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SIDTAB_SIZE ; 
 int /*<<< orphan*/ ** FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct sidtab *s)
{
	int i;

	s->htable = FUNC0(sizeof(*(s->htable)) * SIDTAB_SIZE, GFP_ATOMIC);
	if (!s->htable)
		return -ENOMEM;
	for (i = 0; i < SIDTAB_SIZE; i++)
		s->htable[i] = NULL;
	s->nel = 0;
	s->next_sid = 1;
	s->shutdown = 0;
	FUNC1(&s->lock);
	return 0;
}