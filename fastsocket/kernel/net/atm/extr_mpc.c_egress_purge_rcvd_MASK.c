#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mpoa_client {TYPE_4__* eg_ops; int /*<<< orphan*/  egress_lock; TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  cache_id; } ;
struct TYPE_7__ {TYPE_2__ eg_info; } ;
struct k_message {TYPE_3__ content; } ;
typedef  int /*<<< orphan*/  eg_cache_entry ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_8__ {int /*<<< orphan*/  (* put ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* remove_entry ) (int /*<<< orphan*/ *,struct mpoa_client*) ;int /*<<< orphan*/ * (* get_by_cache_id ) (int /*<<< orphan*/ ,struct mpoa_client*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct k_message *msg, struct mpoa_client *mpc)
{
	__be32 cache_id = msg->content.eg_info.cache_id;
	eg_cache_entry *entry = mpc->eg_ops->get_by_cache_id(cache_id, mpc);

	if (entry == NULL) {
		FUNC0("mpoa: (%s) egress_purge_rcvd: purge for a non-existing entry\n", mpc->dev->name);
		return;
	}

	FUNC4(&mpc->egress_lock);
	mpc->eg_ops->remove_entry(entry, mpc);
	FUNC5(&mpc->egress_lock);

	mpc->eg_ops->put(entry);

	return;
}