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
struct TYPE_6__ {scalar_t__ sin_port; } ;
struct TYPE_5__ {int /*<<< orphan*/  sa_family; } ;
union sctp_addr {TYPE_3__ v4; TYPE_2__ sa; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct sctp_sock {struct sctp_endpoint* ep; } ;
struct sctp_bind_addr {int /*<<< orphan*/  port; int /*<<< orphan*/  address_list; } ;
struct TYPE_4__ {struct sctp_bind_addr bind_addr; } ;
struct sctp_endpoint {TYPE_1__ base; } ;
struct sctp_af {int /*<<< orphan*/  sockaddr_len; int /*<<< orphan*/  (* addr_valid ) (union sctp_addr*,struct sctp_sock*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sockaddr*,int) ; 
 int FUNC4 (struct sctp_bind_addr*,union sctp_addr*) ; 
 struct sctp_af* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct sctp_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (union sctp_addr*,struct sctp_sock*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct sockaddr *addrs, int addrcnt)
{
	struct sctp_sock *sp = FUNC7(sk);
	struct sctp_endpoint *ep = sp->ep;
	int cnt;
	struct sctp_bind_addr *bp = &ep->base.bind_addr;
	int retval = 0;
	void *addr_buf;
	union sctp_addr *sa_addr;
	struct sctp_af *af;

	FUNC0("sctp_bindx_rem (sk: %p, addrs: %p, addrcnt: %d)\n",
			  sk, addrs, addrcnt);

	addr_buf = addrs;
	for (cnt = 0; cnt < addrcnt; cnt++) {
		/* If the bind address list is empty or if there is only one
		 * bind address, there is nothing more to be removed (we need
		 * at least one address here).
		 */
		if (FUNC2(&bp->address_list) ||
		    (FUNC6(&bp->address_list))) {
			retval = -EBUSY;
			goto err_bindx_rem;
		}

		sa_addr = (union sctp_addr *)addr_buf;
		af = FUNC5(sa_addr->sa.sa_family);
		if (!af) {
			retval = -EINVAL;
			goto err_bindx_rem;
		}

		if (!af->addr_valid(sa_addr, sp, NULL)) {
			retval = -EADDRNOTAVAIL;
			goto err_bindx_rem;
		}

		if (sa_addr->v4.sin_port &&
		    sa_addr->v4.sin_port != FUNC1(bp->port)) {
			retval = -EINVAL;
			goto err_bindx_rem;
		}

		if (!sa_addr->v4.sin_port)
			sa_addr->v4.sin_port = FUNC1(bp->port);

		/* FIXME - There is probably a need to check if sk->sk_saddr and
		 * sk->sk_rcv_addr are currently set to one of the addresses to
		 * be removed. This is something which needs to be looked into
		 * when we are fixing the outstanding issues with multi-homing
		 * socket routing and failover schemes. Refer to comments in
		 * sctp_do_bind(). -daisy
		 */
		retval = FUNC4(bp, sa_addr);

		addr_buf += af->sockaddr_len;
err_bindx_rem:
		if (retval < 0) {
			/* Failed. Add the ones that has been removed back */
			if (cnt > 0)
				FUNC3(sk, addrs, cnt);
			return retval;
		}
	}

	return retval;
}