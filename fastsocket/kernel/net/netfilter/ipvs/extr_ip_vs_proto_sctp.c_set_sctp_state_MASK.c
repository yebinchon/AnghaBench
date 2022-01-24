#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ip_vs_protocol {int /*<<< orphan*/ * timeout_table; int /*<<< orphan*/  name; } ;
struct ip_vs_dest {int /*<<< orphan*/  inactconns; int /*<<< orphan*/  activeconns; } ;
struct ip_vs_conn {scalar_t__ af; size_t state; int flags; int /*<<< orphan*/  timeout; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  cport; int /*<<< orphan*/  caddr; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; struct ip_vs_dest* dest; } ;
typedef  int /*<<< orphan*/  sctp_sctphdr_t ;
struct TYPE_5__ {unsigned char type; int length; } ;
typedef  TYPE_1__ sctp_chunkhdr_t ;
typedef  int /*<<< orphan*/  _sctpch ;
struct TYPE_6__ {int next_state; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int IP_VS_CONN_F_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_VS_DIR_OUTPUT ; 
 int IP_VS_SCTP_S_ESTABLISHED ; 
 unsigned char SCTP_CID_ABORT ; 
 unsigned char SCTP_CID_COOKIE_ACK ; 
 unsigned char SCTP_CID_COOKIE_ECHO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int* sctp_events ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_4__** sctp_states_table ; 
 TYPE_1__* FUNC8 (struct sk_buff const*,int,int,TYPE_1__*) ; 

__attribute__((used)) static inline int
FUNC9(struct ip_vs_protocol *pp, struct ip_vs_conn *cp,
		int direction, const struct sk_buff *skb)
{
	sctp_chunkhdr_t _sctpch, *sch;
	unsigned char chunk_type;
	int event, next_state;
	int ihl;

#ifdef CONFIG_IP_VS_IPV6
	ihl = cp->af == AF_INET ? ip_hdrlen(skb) : sizeof(struct ipv6hdr);
#else
	ihl = FUNC5(skb);
#endif

	sch = FUNC8(skb, ihl + sizeof(sctp_sctphdr_t),
				sizeof(_sctpch), &_sctpch);
	if (sch == NULL)
		return 0;

	chunk_type = sch->type;
	/*
	 * Section 3: Multiple chunks can be bundled into one SCTP packet
	 * up to the MTU size, except for the INIT, INIT ACK, and
	 * SHUTDOWN COMPLETE chunks. These chunks MUST NOT be bundled with
	 * any other chunk in a packet.
	 *
	 * Section 3.3.7: DATA chunks MUST NOT be bundled with ABORT. Control
	 * chunks (except for INIT, INIT ACK, and SHUTDOWN COMPLETE) MAY be
	 * bundled with an ABORT, but they MUST be placed before the ABORT
	 * in the SCTP packet or they will be ignored by the receiver.
	 */
	if ((sch->type == SCTP_CID_COOKIE_ECHO) ||
	    (sch->type == SCTP_CID_COOKIE_ACK)) {
		sch = FUNC8(skb, (ihl + sizeof(sctp_sctphdr_t) +
				sch->length), sizeof(_sctpch), &_sctpch);
		if (sch) {
			if (sch->type == SCTP_CID_ABORT)
				chunk_type = sch->type;
		}
	}

	event = sctp_events[chunk_type];

	/*
	 *  If the direction is IP_VS_DIR_OUTPUT, this event is from server
	 */
	if (direction == IP_VS_DIR_OUTPUT)
		event++;
	/*
	 * get next state
	 */
	next_state = sctp_states_table[cp->state][event].next_state;

	if (next_state != cp->state) {
		struct ip_vs_dest *dest = cp->dest;

		FUNC1(8, "%s %s  %s:%d->"
				"%s:%d state: %s->%s conn->refcnt:%d\n",
				pp->name,
				((direction == IP_VS_DIR_OUTPUT) ?
				 "output " : "input "),
				FUNC0(cp->af, &cp->daddr),
				FUNC6(cp->dport),
				FUNC0(cp->af, &cp->caddr),
				FUNC6(cp->cport),
				FUNC7(cp->state),
				FUNC7(next_state),
				FUNC4(&cp->refcnt));
		if (dest) {
			if (!(cp->flags & IP_VS_CONN_F_INACTIVE) &&
				(next_state != IP_VS_SCTP_S_ESTABLISHED)) {
				FUNC2(&dest->activeconns);
				FUNC3(&dest->inactconns);
				cp->flags |= IP_VS_CONN_F_INACTIVE;
			} else if ((cp->flags & IP_VS_CONN_F_INACTIVE) &&
				   (next_state == IP_VS_SCTP_S_ESTABLISHED)) {
				FUNC3(&dest->activeconns);
				FUNC2(&dest->inactconns);
				cp->flags &= ~IP_VS_CONN_F_INACTIVE;
			}
		}
	}

	 cp->timeout = pp->timeout_table[cp->state = next_state];

	 return 1;
}