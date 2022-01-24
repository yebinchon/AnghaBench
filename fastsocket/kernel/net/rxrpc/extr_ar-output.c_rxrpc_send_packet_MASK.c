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
struct sk_buff {int len; int /*<<< orphan*/  head; } ;
struct rxrpc_transport {TYPE_4__* peer; TYPE_3__* local; } ;
struct rxrpc_header {int dummy; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; int /*<<< orphan*/ * msg_name; } ;
struct kvec {int iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_5__ {int /*<<< orphan*/  sin; } ;
struct TYPE_6__ {TYPE_1__ transport; } ;
struct TYPE_8__ {int maxdata; TYPE_2__ srx; } ;
struct TYPE_7__ {int /*<<< orphan*/  defrag_sem; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IP_MTU_DISCOVER ; 
 int IP_PMTUDISC_DO ; 
 int IP_PMTUDISC_DONT ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct msghdr*,struct kvec*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct rxrpc_transport *trans, struct sk_buff *skb)
{
	struct kvec iov[1];
	struct msghdr msg;
	int ret, opt;

	FUNC1(",{%d}", skb->len);

	iov[0].iov_base = skb->head;
	iov[0].iov_len = skb->len;

	msg.msg_name = &trans->peer->srx.transport.sin;
	msg.msg_namelen = sizeof(trans->peer->srx.transport.sin);
	msg.msg_control = NULL;
	msg.msg_controllen = 0;
	msg.msg_flags = 0;

	/* send the packet with the don't fragment bit set if we currently
	 * think it's small enough */
	if (skb->len - sizeof(struct rxrpc_header) < trans->peer->maxdata) {
		FUNC3(&trans->local->defrag_sem);
		/* send the packet by UDP
		 * - returns -EMSGSIZE if UDP would have to fragment the packet
		 *   to go out of the interface
		 *   - in which case, we'll have processed the ICMP error
		 *     message and update the peer record
		 */
		ret = FUNC5(trans->local->socket, &msg, iov, 1,
				     iov[0].iov_len);

		FUNC7(&trans->local->defrag_sem);
		if (ret == -EMSGSIZE)
			goto send_fragmentable;

		FUNC2(" = %d [%u]", ret, trans->peer->maxdata);
		return ret;
	}

send_fragmentable:
	/* attempt to send this message with fragmentation enabled */
	FUNC0("send fragment");

	FUNC4(&trans->local->defrag_sem);
	opt = IP_PMTUDISC_DONT;
	ret = FUNC6(trans->local->socket, SOL_IP, IP_MTU_DISCOVER,
				(char *) &opt, sizeof(opt));
	if (ret == 0) {
		ret = FUNC5(trans->local->socket, &msg, iov, 1,
				     iov[0].iov_len);

		opt = IP_PMTUDISC_DO;
		FUNC6(trans->local->socket, SOL_IP,
				  IP_MTU_DISCOVER, (char *) &opt, sizeof(opt));
	}

	FUNC8(&trans->local->defrag_sem);
	FUNC2(" = %d [frag %u]", ret, trans->peer->maxdata);
	return ret;
}