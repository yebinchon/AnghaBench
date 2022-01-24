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
struct sock {int /*<<< orphan*/  sk_ack_backlog; } ;
struct sctp_sock {int /*<<< orphan*/  ep; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {TYPE_1__ base; int /*<<< orphan*/  ep; int /*<<< orphan*/  asocs; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sctp_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

void FUNC8(struct sctp_association *assoc, struct sock *newsk)
{
	struct sctp_sock *newsp = FUNC4(newsk);
	struct sock *oldsk = assoc->base.sk;

	/* Delete the association from the old endpoint's list of
	 * associations.
	 */
	FUNC0(&assoc->asocs);

	/* Decrement the backlog value for a TCP-style socket. */
	if (FUNC5(oldsk, TCP))
		oldsk->sk_ack_backlog--;

	/* Release references to the old endpoint and the sock.  */
	FUNC3(assoc->ep);
	FUNC7(assoc->base.sk);

	/* Get a reference to the new endpoint.  */
	assoc->ep = newsp->ep;
	FUNC2(assoc->ep);

	/* Get a reference to the new sock.  */
	assoc->base.sk = newsk;
	FUNC6(assoc->base.sk);

	/* Add the association to the new endpoint's list of associations.  */
	FUNC1(newsp->ep, assoc);
}