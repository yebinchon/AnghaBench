#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct mpoa_client {TYPE_4__* in_ops; TYPE_3__* dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  in_dst_ip; } ;
struct TYPE_11__ {TYPE_2__ in_info; } ;
struct k_message {TYPE_1__ content; void* type; } ;
struct TYPE_15__ {scalar_t__ entry_state; int /*<<< orphan*/  reply_wait; TYPE_2__ ctrl_info; } ;
typedef  TYPE_5__ in_cache_entry ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_14__ {int /*<<< orphan*/  (* put ) (TYPE_5__*) ;TYPE_5__* (* add_entry ) (int /*<<< orphan*/ ,struct mpoa_client*) ;TYPE_5__* (* get ) (int /*<<< orphan*/ ,struct mpoa_client*) ;} ;
struct TYPE_13__ {char* name; } ;

/* Variables and functions */
 scalar_t__ INGRESS_INVALID ; 
 void* INGRESS_RESOLVING ; 
 void* SND_MPOA_RES_RQST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,struct mpoa_client*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC8(struct k_message *msg, struct mpoa_client *mpc)
{
	__be32 dst_ip = msg->content.in_info.in_dst_ip;
	in_cache_entry *entry;

	entry = mpc->in_ops->get(dst_ip, mpc);
	if(entry == NULL){
		entry = mpc->in_ops->add_entry(dst_ip, mpc);
		entry->entry_state = INGRESS_RESOLVING;
		msg->type = SND_MPOA_RES_RQST;
		msg->content.in_info = entry->ctrl_info;
		FUNC1(msg, mpc);
		FUNC0(&(entry->reply_wait));
		mpc->in_ops->put(entry);
		return;
	}

	if(entry->entry_state == INGRESS_INVALID){
		entry->entry_state = INGRESS_RESOLVING;
		msg->type = SND_MPOA_RES_RQST;
		msg->content.in_info = entry->ctrl_info;
		FUNC1(msg, mpc);
		FUNC0(&(entry->reply_wait));
		mpc->in_ops->put(entry);
		return;
	}

	FUNC2("mpoa: (%s) MPOA_trigger_rcvd: entry already in resolving state\n",
		(mpc->dev) ? mpc->dev->name : "<unknown>");
	mpc->in_ops->put(entry);
	return;
}