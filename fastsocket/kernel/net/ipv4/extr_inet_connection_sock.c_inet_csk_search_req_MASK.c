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
struct sock {int dummy; } ;
struct request_sock {int /*<<< orphan*/  sk; TYPE_2__* rsk_ops; struct request_sock* dl_next; } ;
struct listen_sock {int /*<<< orphan*/  nr_table_entries; int /*<<< orphan*/  hash_rnd; struct request_sock** syn_table; } ;
struct inet_request_sock {scalar_t__ const rmt_port; scalar_t__ const rmt_addr; scalar_t__ const loc_addr; } ;
struct TYPE_3__ {struct listen_sock* listen_opt; } ;
struct inet_connection_sock {TYPE_1__ icsk_accept_queue; } ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC2 (struct sock const*) ; 
 struct inet_request_sock* FUNC3 (struct request_sock*) ; 
 size_t FUNC4 (scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct request_sock *FUNC5(const struct sock *sk,
					 struct request_sock ***prevp,
					 const __be16 rport, const __be32 raddr,
					 const __be32 laddr)
{
	const struct inet_connection_sock *icsk = FUNC2(sk);
	struct listen_sock *lopt = icsk->icsk_accept_queue.listen_opt;
	struct request_sock *req, **prev;

	for (prev = &lopt->syn_table[FUNC4(raddr, rport, lopt->hash_rnd,
						    lopt->nr_table_entries)];
	     (req = *prev) != NULL;
	     prev = &req->dl_next) {
		const struct inet_request_sock *ireq = FUNC3(req);

		if (ireq->rmt_port == rport &&
		    ireq->rmt_addr == raddr &&
		    ireq->loc_addr == laddr &&
		    FUNC0(req->rsk_ops->family)) {
			FUNC1(req->sk);
			*prevp = prev;
			break;
		}
	}

	return req;
}