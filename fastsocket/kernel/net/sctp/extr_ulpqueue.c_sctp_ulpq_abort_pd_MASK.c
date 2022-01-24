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
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sctp_ulpq {TYPE_2__* asoc; int /*<<< orphan*/  pd_mode; } ;
struct sctp_ulpevent {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  subscribe; } ;
struct TYPE_4__ {struct sock* sk; } ;
struct TYPE_5__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_PARTIAL_DELIVERY_ABORTED ; 
 int /*<<< orphan*/  SCTP_PARTIAL_DELIVERY_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_ulpevent*) ; 
 TYPE_3__* FUNC2 (struct sock*) ; 
 struct sctp_ulpevent* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sctp_ulpq*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC7(struct sctp_ulpq *ulpq, gfp_t gfp)
{
	struct sctp_ulpevent *ev = NULL;
	struct sock *sk;

	if (!ulpq->pd_mode)
		return;

	sk = ulpq->asoc->base.sk;
	if (FUNC4(SCTP_PARTIAL_DELIVERY_EVENT,
				       &FUNC2(sk)->subscribe))
		ev = FUNC3(ulpq->asoc,
					      SCTP_PARTIAL_DELIVERY_ABORTED,
					      gfp);
	if (ev)
		FUNC0(&sk->sk_receive_queue, FUNC1(ev));

	/* If there is data waiting, send it up the socket now. */
	if (FUNC5(ulpq) || ev)
		sk->sk_data_ready(sk, 0);
}