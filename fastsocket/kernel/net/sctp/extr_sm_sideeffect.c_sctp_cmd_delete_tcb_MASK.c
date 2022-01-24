#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_shutdown; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {int /*<<< orphan*/  temp; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  LISTENING ; 
 scalar_t__ SHUTDOWN_MASK ; 
 int /*<<< orphan*/  TCP ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association*) ; 
 scalar_t__ FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_association*) ; 

__attribute__((used)) static void FUNC4(sctp_cmd_seq_t *cmds,
				struct sctp_association *asoc)
{
	struct sock *sk = asoc->base.sk;

	/* If it is a non-temporary association belonging to a TCP-style
	 * listening socket that is not closed, do not free it so that accept()
	 * can pick it up later.
	 */
	if (FUNC2(sk, TCP) && FUNC1(sk, LISTENING) &&
	    (!asoc->temp) && (sk->sk_shutdown != SHUTDOWN_MASK))
		return;

	FUNC3(asoc);
	FUNC0(asoc);
}