#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {int dummy; } ;
struct sctp_transport {scalar_t__ pathmtu; int pmtu_pending; int param_flags; } ;
struct sctp_association {int pmtu_pending; int /*<<< orphan*/  outqueue; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_RTXR_PMTUD ; 
 int SPP_PMTUD_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sctp_transport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_transport*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sock*) ; 

void FUNC4(struct sock *sk, struct sctp_association *asoc,
			   struct sctp_transport *t, __u32 pmtu)
{
	if (!t || (t->pathmtu <= pmtu))
		return;

	if (FUNC3(sk)) {
		asoc->pmtu_pending = 1;
		t->pmtu_pending = 1;
		return;
	}

	if (t->param_flags & SPP_PMTUD_ENABLE) {
		/* Update transports view of the MTU */
		FUNC2(t, pmtu);

		/* Update association pmtu. */
		FUNC0(asoc);
	}

	/* Retransmit with the new pmtu setting.
	 * Normally, if PMTU discovery is disabled, an ICMP Fragmentation
	 * Needed will never be sent, but if a message was sent before
	 * PMTU discovery was disabled that was larger than the PMTU, it
	 * would not be fragmented, so it must be re-transmitted fragmented.
	 */
	FUNC1(&asoc->outqueue, t, SCTP_RTXR_PMTUD);
}