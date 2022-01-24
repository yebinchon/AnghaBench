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
struct TYPE_4__ {int dead; TYPE_1__* sk; } ;
struct sctp_endpoint {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_SS_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_endpoint*) ; 

void FUNC2(struct sctp_endpoint *ep)
{
	ep->base.dead = 1;

	ep->base.sk->sk_state = SCTP_SS_CLOSED;

	/* Unlink this endpoint, so we can't find it again! */
	FUNC1(ep);

	FUNC0(ep);
}