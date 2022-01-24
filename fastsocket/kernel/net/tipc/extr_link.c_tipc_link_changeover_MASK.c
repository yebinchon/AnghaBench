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
typedef  int /*<<< orphan*/  unchar ;
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
struct link {TYPE_2__* owner; TYPE_1__* b_ptr; struct sk_buff* first_out; int /*<<< orphan*/  peer_bearer_id; int /*<<< orphan*/  addr; int /*<<< orphan*/  out_queue_size; } ;
struct TYPE_4__ {struct link** active_links; int /*<<< orphan*/  permit_changeover; } ;
struct TYPE_3__ {int /*<<< orphan*/  net_plane; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGEOVER_PROTOCOL ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 scalar_t__ MSG_BUNDLER ; 
 int /*<<< orphan*/  ORIGINAL_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,char*) ; 
 struct tipc_msg* FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*) ; 
 scalar_t__ FUNC15 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct link*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct link*,struct tipc_msg*,struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

void FUNC20(struct link *l_ptr)
{
	u32 msgcount = l_ptr->out_queue_size;
	struct sk_buff *crs = l_ptr->first_out;
	struct link *tunnel = l_ptr->owner->active_links[0];
	struct tipc_msg tunnel_hdr;
	int split_bundles;

	if (!tunnel)
		return;

	if (!l_ptr->owner->permit_changeover) {
		FUNC19("Link changeover error, "
		     "peer did not permit changeover\n");
		return;
	}

	FUNC6(&tunnel_hdr, CHANGEOVER_PROTOCOL,
		 ORIGINAL_MSG, INT_H_SIZE, l_ptr->addr);
	FUNC10(&tunnel_hdr, l_ptr->peer_bearer_id);
	FUNC11(&tunnel_hdr, msgcount);
	FUNC3("Link changeover requires %u tunnel messages\n", msgcount);

	if (!l_ptr->first_out) {
		struct sk_buff *buf;

		buf = FUNC1(INT_H_SIZE);
		if (buf) {
			FUNC16(buf, &tunnel_hdr, INT_H_SIZE);
			FUNC13(&tunnel_hdr, INT_H_SIZE);
			FUNC3("%c->%c:", l_ptr->b_ptr->net_plane,
			    tunnel->b_ptr->net_plane);
			FUNC4(&tunnel_hdr, "EMPTY>SEND>");
			FUNC17(tunnel, buf);
		} else {
			FUNC19("Link changeover error, "
			     "unable to send changeover msg\n");
		}
		return;
	}

	split_bundles = (l_ptr->owner->active_links[0] !=
			 l_ptr->owner->active_links[1]);

	while (crs) {
		struct tipc_msg *msg = FUNC2(crs);

		if ((FUNC15(msg) == MSG_BUNDLER) && split_bundles) {
			struct tipc_msg *m = FUNC5(msg);
			unchar* pos = (unchar*)m;

			msgcount = FUNC8(msg);
			while (msgcount--) {
				FUNC12(m,FUNC9(msg));
				FUNC18(l_ptr, &tunnel_hdr, m,
						 FUNC7(m));
				pos += FUNC0(FUNC14(m));
				m = (struct tipc_msg *)pos;
			}
		} else {
			FUNC18(l_ptr, &tunnel_hdr, msg,
					 FUNC7(msg));
		}
		crs = crs->next;
	}
}