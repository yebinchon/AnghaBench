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
struct sock {int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_state; } ;
struct request_sock {int dummy; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_accept_queue; scalar_t__ icsk_probes_out; scalar_t__ icsk_backoff; scalar_t__ icsk_retransmits; int /*<<< orphan*/ * icsk_bind_hash; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int /*<<< orphan*/  loc_port; int /*<<< orphan*/  rmt_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  sport; int /*<<< orphan*/  num; int /*<<< orphan*/  dport; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_SYN_RECV ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct request_sock const*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct request_sock const*) ; 
 struct sock* FUNC6 (struct sock*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  sk_stream_write_space ; 

struct sock *FUNC7(struct sock *sk, const struct request_sock *req,
			    const gfp_t priority)
{
	struct sock *newsk = FUNC6(sk, priority);

	if (newsk != NULL) {
		struct inet_connection_sock *newicsk = FUNC0(newsk);

		newsk->sk_state = TCP_SYN_RECV;
		newicsk->icsk_bind_hash = NULL;

		FUNC2(newsk)->dport = FUNC1(req)->rmt_port;
		FUNC2(newsk)->num = FUNC4(FUNC1(req)->loc_port);
		FUNC2(newsk)->sport = FUNC1(req)->loc_port;
		newsk->sk_write_space = sk_stream_write_space;

		newicsk->icsk_retransmits = 0;
		newicsk->icsk_backoff	  = 0;
		newicsk->icsk_probes_out  = 0;

		/* Deinitialize accept_queue to trap illegal accesses. */
		FUNC3(&newicsk->icsk_accept_queue, 0, sizeof(newicsk->icsk_accept_queue));

		FUNC5(newsk, req);
	}
	return newsk;
}