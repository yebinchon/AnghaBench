#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mpoa_client {TYPE_2__* eg_ops; TYPE_1__* in_ops; int /*<<< orphan*/  egress_lock; TYPE_4__* eg_cache; TYPE_3__* dev; int /*<<< orphan*/  mps_ctrl_addr; } ;
struct k_message {int /*<<< orphan*/  MPS_ctrl; } ;
struct TYPE_9__ {struct TYPE_9__* next; int /*<<< orphan*/  shortcut; } ;
typedef  TYPE_4__ eg_cache_entry ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* destroy_cache ) (struct mpoa_client*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* destroy_cache ) (struct mpoa_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_ESA_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct mpoa_client*) ; 

__attribute__((used)) static void FUNC8( struct k_message * msg, struct mpoa_client * mpc )
{
	eg_cache_entry *entry;

	FUNC0("mpoa: (%s) mps_death:\n", mpc->dev->name);

	if(FUNC1(msg->MPS_ctrl, mpc->mps_ctrl_addr, ATM_ESA_LEN)){
		FUNC2("mpoa: (%s) mps_death: wrong MPS\n", mpc->dev->name);
		return;
	}

	/* FIXME: This knows too much of the cache structure */
	FUNC4(&mpc->egress_lock);
	entry = mpc->eg_cache;
	while (entry != NULL) {
		FUNC3(entry->shortcut, entry);
		entry = entry->next;
	}
	FUNC5(&mpc->egress_lock);

	mpc->in_ops->destroy_cache(mpc);
	mpc->eg_ops->destroy_cache(mpc);

	return;
}