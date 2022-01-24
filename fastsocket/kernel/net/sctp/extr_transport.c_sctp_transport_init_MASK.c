#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sa_family; } ;
union sctp_addr {TYPE_1__ sa; } ;
struct TYPE_5__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct sctp_transport {int param_flags; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  hb_nonce; TYPE_2__ proto_unreach_timer; TYPE_2__ hb_timer; TYPE_2__ T3_rtx_timer; int /*<<< orphan*/  transports; int /*<<< orphan*/  send_ready; int /*<<< orphan*/  transmitted; int /*<<< orphan*/  pf_retrans; int /*<<< orphan*/  pathmaxrxt; void* last_time_ecne_reduced; void* last_time_heard; int /*<<< orphan*/  rto; scalar_t__ sack_generation; int /*<<< orphan*/  saddr; int /*<<< orphan*/  af_specific; union sctp_addr ipaddr; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SPP_HB_DISABLE ; 
 int SPP_PMTUD_ENABLE ; 
 int SPP_SACKDELAY_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_generate_heartbeat_event ; 
 int /*<<< orphan*/  sctp_generate_proto_unreach_event ; 
 int /*<<< orphan*/  sctp_generate_t3_rtx_event ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_max_retrans_path ; 
 int /*<<< orphan*/  sctp_pf_retrans ; 
 int /*<<< orphan*/  sctp_rto_initial ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static struct sctp_transport *FUNC8(struct sctp_transport *peer,
						  const union sctp_addr *addr,
						  gfp_t gfp)
{
	/* Copy in the address.  */
	peer->ipaddr = *addr;
	peer->af_specific = FUNC6(addr->sa.sa_family);
	FUNC4(&peer->saddr, 0, sizeof(union sctp_addr));

	peer->sack_generation = 0;

	/* From 6.3.1 RTO Calculation:
	 *
	 * C1) Until an RTT measurement has been made for a packet sent to the
	 * given destination transport address, set RTO to the protocol
	 * parameter 'RTO.Initial'.
	 */
	peer->rto = FUNC5(sctp_rto_initial);

	peer->last_time_heard = jiffies;
	peer->last_time_ecne_reduced = jiffies;

	peer->param_flags = SPP_HB_DISABLE |
			    SPP_PMTUD_ENABLE |
			    SPP_SACKDELAY_ENABLE;

	/* Initialize the default path max_retrans.  */
	peer->pathmaxrxt  = sctp_max_retrans_path;
	peer->pf_retrans  = sctp_pf_retrans;

	FUNC0(&peer->transmitted);
	FUNC0(&peer->send_ready);
	FUNC0(&peer->transports);

	FUNC7(&peer->T3_rtx_timer, sctp_generate_t3_rtx_event,
			(unsigned long)peer);
	FUNC7(&peer->hb_timer, sctp_generate_heartbeat_event,
			(unsigned long)peer);
	FUNC7(&peer->proto_unreach_timer,
		    sctp_generate_proto_unreach_event, (unsigned long)peer);

	FUNC3(&peer->proto_unreach_timer);
        peer->proto_unreach_timer.function = sctp_generate_proto_unreach_event;
	peer->proto_unreach_timer.data = (unsigned long)peer;

	/* Initialize the 64-bit random nonce sent with heartbeat. */
	FUNC2(&peer->hb_nonce, sizeof(peer->hb_nonce));

	FUNC1(&peer->refcnt, 1);

	return peer;
}