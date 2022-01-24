#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct sock {scalar_t__ sk_family; int /*<<< orphan*/  sk_userlocks; } ;
struct sk_buff {int dummy; } ;
struct request_sock {struct request_sock* dl_next; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; TYPE_5__* nlh; int /*<<< orphan*/  skb; } ;
struct listen_sock {int nr_table_entries; struct request_sock** syn_table; int /*<<< orphan*/  qlen; } ;
struct inet_sock {int /*<<< orphan*/  num; } ;
struct inet_request_sock {scalar_t__ rmt_port; int /*<<< orphan*/  rmt_addr; int /*<<< orphan*/  loc_addr; } ;
struct TYPE_12__ {scalar_t__ idiag_dport; } ;
struct inet_diag_req {TYPE_1__ id; } ;
struct inet_diag_entry {scalar_t__ family; int /*<<< orphan*/  dport; int /*<<< orphan*/ * daddr; int /*<<< orphan*/ * saddr; int /*<<< orphan*/  userlocks; int /*<<< orphan*/  sport; } ;
struct TYPE_15__ {int /*<<< orphan*/  syn_wait_lock; struct listen_sock* listen_opt; } ;
struct inet_connection_sock {TYPE_4__ icsk_accept_queue; } ;
struct TYPE_14__ {int /*<<< orphan*/ * s6_addr32; } ;
struct TYPE_13__ {int /*<<< orphan*/ * s6_addr32; } ;
struct TYPE_17__ {TYPE_3__ rmt_addr; TYPE_2__ loc_addr; } ;
struct TYPE_16__ {int /*<<< orphan*/  nlmsg_seq; } ;
struct TYPE_11__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  INET_DIAG_REQ_BYTECODE ; 
 TYPE_10__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct inet_diag_req* FUNC1 (TYPE_5__*) ; 
 TYPE_8__* FUNC2 (struct request_sock*) ; 
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inet_diag_entry*) ; 
 int FUNC5 (struct sk_buff*,struct sock*,struct request_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 struct inet_request_sock* FUNC6 (struct request_sock*) ; 
 struct inet_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr const*) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int) ; 
 struct nlattr* FUNC11 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct sock *sk,
			       struct netlink_callback *cb)
{
	struct inet_diag_entry entry;
	struct inet_diag_req *r = FUNC1(cb->nlh);
	struct inet_connection_sock *icsk = FUNC3(sk);
	struct listen_sock *lopt;
	const struct nlattr *bc = NULL;
	struct inet_sock *inet = FUNC7(sk);
	int j, s_j;
	int reqnum, s_reqnum;
	int err = 0;

	s_j = cb->args[3];
	s_reqnum = cb->args[4];

	if (s_j > 0)
		s_j--;

	entry.family = sk->sk_family;

	FUNC13(&icsk->icsk_accept_queue.syn_wait_lock);

	lopt = icsk->icsk_accept_queue.listen_opt;
	if (!lopt || !lopt->qlen)
		goto out;

	if (FUNC10(cb->nlh, sizeof(*r))) {
		bc = FUNC11(cb->nlh, sizeof(*r),
				     INET_DIAG_REQ_BYTECODE);
		entry.sport = inet->num;
		entry.userlocks = sk->sk_userlocks;
	}

	for (j = s_j; j < lopt->nr_table_entries; j++) {
		struct request_sock *req, *head = lopt->syn_table[j];

		reqnum = 0;
		for (req = head; req; reqnum++, req = req->dl_next) {
			struct inet_request_sock *ireq = FUNC6(req);

			if (reqnum < s_reqnum)
				continue;
			if (r->id.idiag_dport != ireq->rmt_port &&
			    r->id.idiag_dport)
				continue;

			if (bc) {
				entry.saddr =
#if defined(CONFIG_IPV6) || defined (CONFIG_IPV6_MODULE)
					(entry.family == AF_INET6) ?
					inet6_rsk(req)->loc_addr.s6_addr32 :
#endif
					&ireq->loc_addr;
				entry.daddr =
#if defined(CONFIG_IPV6) || defined (CONFIG_IPV6_MODULE)
					(entry.family == AF_INET6) ?
					inet6_rsk(req)->rmt_addr.s6_addr32 :
#endif
					&ireq->rmt_addr;
				entry.dport = FUNC12(ireq->rmt_port);

				if (!FUNC4(FUNC8(bc),
						      FUNC9(bc), &entry))
					continue;
			}

			err = FUNC5(skb, sk, req,
					       FUNC0(cb->skb).pid,
					       cb->nlh->nlmsg_seq, cb->nlh);
			if (err < 0) {
				cb->args[3] = j + 1;
				cb->args[4] = reqnum;
				goto out;
			}
		}

		s_reqnum = 0;
	}

out:
	FUNC14(&icsk->icsk_accept_queue.syn_wait_lock);

	return err;
}