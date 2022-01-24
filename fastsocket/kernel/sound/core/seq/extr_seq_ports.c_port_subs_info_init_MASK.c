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
struct snd_seq_port_subs_info {int /*<<< orphan*/ * close; int /*<<< orphan*/ * open; int /*<<< orphan*/  list_mutex; int /*<<< orphan*/  list_lock; scalar_t__ exclusive; scalar_t__ count; int /*<<< orphan*/  list_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct snd_seq_port_subs_info *grp)
{
	FUNC0(&grp->list_head);
	grp->count = 0;
	grp->exclusive = 0;
	FUNC2(&grp->list_lock);
	FUNC1(&grp->list_mutex);
	grp->open = NULL;
	grp->close = NULL;
}