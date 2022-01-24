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
struct timer_list {int dummy; } ;
struct sctp_packet {TYPE_1__* transport; int /*<<< orphan*/  has_cookie_echo; int /*<<< orphan*/  has_sack; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_4__ {scalar_t__ sack_generation; scalar_t__ sack_needed; } ;
struct sctp_association {TYPE_2__ peer; int /*<<< orphan*/  rwnd; int /*<<< orphan*/  a_rwnd; struct timer_list* timers; } ;
typedef  int /*<<< orphan*/  sctp_xmit_t ;
struct TYPE_3__ {scalar_t__ sack_generation; struct sctp_association* asoc; } ;

/* Variables and functions */
 size_t SCTP_EVENT_TIMEOUT_SACK ; 
 int /*<<< orphan*/  SCTP_XMIT_OK ; 
 scalar_t__ FUNC0 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_association*) ; 
 scalar_t__ FUNC2 (struct sctp_chunk*) ; 
 struct sctp_chunk* FUNC3 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_packet*,struct sctp_chunk*) ; 
 scalar_t__ FUNC5 (struct timer_list*) ; 

__attribute__((used)) static sctp_xmit_t FUNC6(struct sctp_packet *pkt,
					   struct sctp_chunk *chunk)
{
	sctp_xmit_t retval = SCTP_XMIT_OK;

	/* If sending DATA and haven't aleady bundled a SACK, try to
	 * bundle one in to the packet.
	 */
	if (FUNC2(chunk) && !pkt->has_sack &&
	    !pkt->has_cookie_echo) {
		struct sctp_association *asoc;
		struct timer_list *timer;
		asoc = pkt->transport->asoc;
		timer = &asoc->timers[SCTP_EVENT_TIMEOUT_SACK];

		/* If the SACK timer is running, we have a pending SACK */
		if (FUNC5(timer)) {
			struct sctp_chunk *sack;

			if (pkt->transport->sack_generation !=
			    pkt->transport->asoc->peer.sack_generation)
				return retval;

			asoc->a_rwnd = asoc->rwnd;
			sack = FUNC3(asoc);
			if (sack) {
				retval = FUNC4(pkt, sack);
				asoc->peer.sack_needed = 0;
				if (FUNC0(timer))
					FUNC1(asoc);
			}
		}
	}
	return retval;
}