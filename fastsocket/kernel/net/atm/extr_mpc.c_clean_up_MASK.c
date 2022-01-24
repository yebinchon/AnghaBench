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
struct mpoa_client {int /*<<< orphan*/  egress_lock; TYPE_3__* eg_cache; } ;
struct TYPE_5__ {int /*<<< orphan*/  cache_id; } ;
struct TYPE_4__ {TYPE_2__ eg_info; } ;
struct k_message {int type; TYPE_1__ content; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_2__ ctrl_info; } ;
typedef  TYPE_3__ eg_cache_entry ;

/* Variables and functions */
 int SND_EGRESS_PURGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct k_message *msg, struct mpoa_client *mpc, int action)
{

	eg_cache_entry *entry;
	msg->type = SND_EGRESS_PURGE;


	/* FIXME: This knows too much of the cache structure */
	FUNC2(&mpc->egress_lock);
	entry = mpc->eg_cache;
	while (entry != NULL){
		    msg->content.eg_info = entry->ctrl_info;
		    FUNC0("mpoa: cache_id %u\n", entry->ctrl_info.cache_id);
		    FUNC1(msg, mpc);
		    entry = entry->next;
	}
	FUNC3(&mpc->egress_lock);

	msg->type = action;
	FUNC1(msg, mpc);
	return;
}