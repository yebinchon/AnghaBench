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
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; int /*<<< orphan*/  data; } ;
struct link {TYPE_3__* b_ptr; TYPE_2__* owner; scalar_t__ next_in_no; struct sk_buff* first_out; int /*<<< orphan*/  peer_bearer_id; int /*<<< orphan*/  out_queue_size; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  net_plane; } ;
struct TYPE_4__ {int /*<<< orphan*/  last_in; } ;
struct TYPE_5__ {TYPE_1__ bclink; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGEOVER_PROTOCOL ; 
 int /*<<< orphan*/  CLOSED_MSG ; 
 int /*<<< orphan*/  DUPLICATE_MSG ; 
 scalar_t__ INT_H_SIZE ; 
 scalar_t__ MSG_BUNDLER ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct tipc_msg*) ; 
 scalar_t__ FUNC13 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct link*) ; 
 int /*<<< orphan*/  FUNC17 (struct link*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

void FUNC19(struct link *l_ptr, struct link *tunnel)
{
	struct sk_buff *iter;
	struct tipc_msg tunnel_hdr;

	FUNC5(&tunnel_hdr, CHANGEOVER_PROTOCOL,
		 DUPLICATE_MSG, INT_H_SIZE, l_ptr->addr);
	FUNC9(&tunnel_hdr, l_ptr->out_queue_size);
	FUNC8(&tunnel_hdr, l_ptr->peer_bearer_id);
	iter = l_ptr->first_out;
	while (iter) {
		struct sk_buff *outbuf;
		struct tipc_msg *msg = FUNC1(iter);
		u32 length = FUNC12(msg);

		if (FUNC13(msg) == MSG_BUNDLER)
			FUNC11(msg, CLOSED_MSG);
		FUNC6(msg, FUNC3(l_ptr->next_in_no - 1));	/* Update */
		FUNC7(msg, l_ptr->owner->bclink.last_in);
		FUNC10(&tunnel_hdr, length + INT_H_SIZE);
		outbuf = FUNC0(length + INT_H_SIZE);
		if (outbuf == NULL) {
			FUNC18("Link changeover error, "
			     "unable to send duplicate msg\n");
			return;
		}
		FUNC14(outbuf, &tunnel_hdr, INT_H_SIZE);
		FUNC15(outbuf, INT_H_SIZE, iter->data,
					       length);
		FUNC2("%c->%c:", l_ptr->b_ptr->net_plane,
		    tunnel->b_ptr->net_plane);
		FUNC4(FUNC1(outbuf), ">SEND>");
		FUNC17(tunnel, outbuf);
		if (!FUNC16(l_ptr))
			return;
		iter = iter->next;
	}
}