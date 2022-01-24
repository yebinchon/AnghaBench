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
typedef  size_t u32 ;
struct tipc_node {TYPE_1__* b_ptr; struct tipc_node** active_links; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {TYPE_1__* b_ptr; struct sk_buff** active_links; } ;
struct TYPE_4__ {scalar_t__ max_pkt; int /*<<< orphan*/  ref; struct tipc_msg phdr; } ;
struct port {TYPE_2__ publ; int /*<<< orphan*/  user_port; } ;
struct link {TYPE_1__* b_ptr; struct link** active_links; } ;
struct iovec {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cong_links; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_ERR_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_node*) ; 
 scalar_t__ FUNC1 (struct tipc_node*) ; 
 scalar_t__ FUNC2 (struct tipc_node*) ; 
 scalar_t__ FUNC3 (struct tipc_node*) ; 
 int FUNC4 (struct tipc_node*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct tipc_node*,struct tipc_node*,scalar_t__*) ; 
 int FUNC6 (struct port*,struct iovec const*,size_t const,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct tipc_msg*,struct iovec const*,size_t const,scalar_t__,int,struct tipc_node**) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 int FUNC10 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_net_lock ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_node*) ; 
 struct tipc_node* FUNC14 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_node*) ; 
 int FUNC16 (struct port*,struct tipc_msg*,struct iovec const*,size_t const,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct tipc_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(struct port *sender,
				 struct iovec const *msg_sect,
				 const u32 num_sect,
				 u32 destaddr)
{
	struct tipc_msg *hdr = &sender->publ.phdr;
	struct link *l_ptr;
	struct sk_buff *buf;
	struct tipc_node *node;
	int res;
	u32 selector = FUNC10(hdr) & 1;

again:
	/*
	 * Try building message using port's max_pkt hint.
	 * (Must not hold any locks while building message.)
	 */

	res = FUNC8(hdr, msg_sect, num_sect, sender->publ.max_pkt,
			!sender->user_port, &buf);

	FUNC11(&tipc_net_lock);
	node = FUNC14(destaddr, selector);
	if (FUNC1(node)) {
		FUNC13(node);
		l_ptr = node->active_links[selector];
		if (FUNC1(l_ptr)) {
			if (FUNC1(buf)) {
				res = FUNC5(l_ptr, buf,
							 &sender->publ.max_pkt);
				if (FUNC18(res < 0))
					FUNC0(buf);
exit:
				FUNC15(node);
				FUNC12(&tipc_net_lock);
				return res;
			}

			/* Exit if build request was invalid */

			if (FUNC18(res < 0))
				goto exit;

			/* Exit if link (or bearer) is congested */

			if (FUNC2(l_ptr) ||
			    !FUNC7(&l_ptr->b_ptr->cong_links)) {
				res = FUNC4(l_ptr,
							 sender->publ.ref, res);
				goto exit;
			}

			/*
			 * Message size exceeds max_pkt hint; update hint,
			 * then re-try fast path or fragment the message
			 */

			sender->publ.max_pkt = FUNC3(l_ptr);
			FUNC15(node);
			FUNC12(&tipc_net_lock);


			if ((FUNC9(hdr) + res) <= sender->publ.max_pkt)
				goto again;

			return FUNC6(sender, msg_sect,
						       num_sect, destaddr);
		}
		FUNC15(node);
	}
	FUNC12(&tipc_net_lock);

	/* Couldn't find a link to the destination node */

	if (buf)
		return FUNC17(buf, TIPC_ERR_NO_NODE);
	if (res >= 0)
		return FUNC16(sender, hdr, msg_sect, num_sect,
						 TIPC_ERR_NO_NODE);
	return res;
}