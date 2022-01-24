#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_sec; } ;
struct mpoa_client {int /*<<< orphan*/  egress_lock; TYPE_4__* eg_ops; TYPE_5__* eg_cache; } ;
struct TYPE_9__ {scalar_t__ holding_time; int /*<<< orphan*/  cache_id; } ;
struct TYPE_8__ {TYPE_3__ eg_info; } ;
struct k_message {TYPE_2__ content; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct TYPE_11__ {TYPE_3__ ctrl_info; TYPE_1__ tv; struct TYPE_11__* next; } ;
typedef  TYPE_5__ eg_cache_entry ;
struct TYPE_10__ {int /*<<< orphan*/  (* remove_entry ) (TYPE_5__*,struct mpoa_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SND_EGRESS_PURGE ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mpoa_client *client)
{
	eg_cache_entry *entry, *next_entry;
	struct timeval now;
	struct k_message msg;

	FUNC0(&now);

	FUNC5(&client->egress_lock);
	entry = client->eg_cache;
	while(entry != NULL){
		next_entry = entry->next;
		if((now.tv_sec - entry->tv.tv_sec)
		   > entry->ctrl_info.holding_time){
			msg.type = SND_EGRESS_PURGE;
			msg.content.eg_info = entry->ctrl_info;
			FUNC1("mpoa: mpoa_caches.c: egress_cache: holding time expired, cache_id = %lu.\n",FUNC3(entry->ctrl_info.cache_id));
			FUNC2(&msg, client);
			client->eg_ops->remove_entry(entry, client);
		}
		entry = next_entry;
	}
	FUNC6(&client->egress_lock);

	return;
}