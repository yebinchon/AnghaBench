#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct tcphdr {scalar_t__ rst; scalar_t__ fin; scalar_t__ ack; scalar_t__ syn; int /*<<< orphan*/  ack_seq; int /*<<< orphan*/  seq; int /*<<< orphan*/  window; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_9__ {int state; int last_dir; unsigned int last_index; int last_win; scalar_t__ retrans; TYPE_5__* seen; int /*<<< orphan*/  last_end; int /*<<< orphan*/  last_seq; } ;
struct TYPE_7__ {TYPE_4__ tcp; } ;
struct TYPE_6__ {int last_wscale; int last_flags; } ;
struct nf_conn {int /*<<< orphan*/  status; int /*<<< orphan*/  lock; TYPE_2__ proto; TYPE_1__ proto_ext; TYPE_3__* tuplehash; } ;
struct net {int dummy; } ;
struct ip_ct_tcp_state {int flags; int td_scale; } ;
typedef  enum tcp_conntrack { ____Placeholder_tcp_conntrack } tcp_conntrack ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef  int /*<<< orphan*/  _tcph ;
struct TYPE_10__ {int flags; int td_maxwin; int td_scale; int /*<<< orphan*/  td_maxack; int /*<<< orphan*/  td_maxend; int /*<<< orphan*/  td_end; } ;
struct TYPE_8__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  IPCT_PROTOINFO ; 
 int /*<<< orphan*/  IPCT_STATUS ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPS_ASSURED_BIT ; 
 int /*<<< orphan*/  IPS_SEEN_REPLY_BIT ; 
 int IP_CT_DIR_ORIGINAL ; 
 int IP_CT_TCP_FLAG_CLOSE_INIT ; 
 int IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED ; 
 int IP_CT_TCP_FLAG_MAXACK_SET ; 
 int IP_CT_TCP_FLAG_SACK_PERM ; 
 int IP_CT_TCP_FLAG_WINDOW_SCALE ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 int NF_REPEAT ; 
 unsigned int TCP_ACK_SET ; 
#define  TCP_CONNTRACK_CLOSE 131 
 int TCP_CONNTRACK_ESTABLISHED ; 
 int TCP_CONNTRACK_FIN_WAIT ; 
#define  TCP_CONNTRACK_IGNORE 130 
#define  TCP_CONNTRACK_MAX 129 
 int TCP_CONNTRACK_SYN_RECV ; 
#define  TCP_CONNTRACK_SYN_SENT 128 
 int TCP_CONNTRACK_TIME_WAIT ; 
 unsigned int TCP_RST_SET ; 
 unsigned int TCP_SYNACK_SET ; 
 unsigned int TCP_SYN_SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct tcphdr const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC8 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conn*,int,struct sk_buff const*) ; 
 struct net* FUNC10 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC11 (struct nf_conn*,int,struct sk_buff const*,unsigned long) ; 
 scalar_t__ nf_ct_tcp_max_retrans ; 
 unsigned long nf_ct_tcp_timeout_max_retrans ; 
 unsigned long nf_ct_tcp_timeout_unacknowledged ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct tcphdr const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tcphdr* FUNC18 (struct sk_buff const*,unsigned int,int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int*** tcp_conntracks ; 
 int /*<<< orphan*/  FUNC21 (struct nf_conn*,TYPE_4__*,int,unsigned int,struct sk_buff const*,unsigned int,struct tcphdr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff const*,unsigned int,struct tcphdr const*,struct ip_ct_tcp_state*) ; 
 unsigned long* tcp_timeouts ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct nf_conn *ct,
		      const struct sk_buff *skb,
		      unsigned int dataoff,
		      enum ip_conntrack_info ctinfo,
		      u_int8_t pf,
		      unsigned int hooknum)
{
	struct net *net = FUNC10(ct);
	struct nf_conntrack_tuple *tuple;
	enum tcp_conntrack new_state, old_state;
	enum ip_conntrack_dir dir;
	const struct tcphdr *th;
	struct tcphdr _tcph;
	unsigned long timeout;
	unsigned int index;

	th = FUNC18(skb, dataoff, sizeof(_tcph), &_tcph);
	FUNC0(th == NULL);

	FUNC19(&ct->lock);
	old_state = ct->proto.tcp.state;
	dir = FUNC1(ctinfo);
	index = FUNC4(th);
	new_state = tcp_conntracks[dir][index][old_state];
	tuple = &ct->tuplehash[dir].tuple;

	switch (new_state) {
	case TCP_CONNTRACK_SYN_SENT:
		if (old_state < TCP_CONNTRACK_TIME_WAIT)
			break;
		/* RFC 1122: "When a connection is closed actively,
		 * it MUST linger in TIME-WAIT state for a time 2xMSL
		 * (Maximum Segment Lifetime). However, it MAY accept
		 * a new SYN from the remote TCP to reopen the connection
		 * directly from TIME-WAIT state, if..."
		 * We ignore the conditions because we are in the
		 * TIME-WAIT state anyway.
		 *
		 * Handle aborted connections: we and the server
		 * think there is an existing connection but the client
		 * aborts it and starts a new one.
		 */
		if (((ct->proto.tcp.seen[dir].flags
		      | ct->proto.tcp.seen[!dir].flags)
		     & IP_CT_TCP_FLAG_CLOSE_INIT)
		    || (ct->proto.tcp.last_dir == dir
		        && ct->proto.tcp.last_index == TCP_RST_SET)) {
			/* Attempt to reopen a closed/aborted connection.
			 * Delete this connection and look up again. */
			FUNC20(&ct->lock);

			/* Only repeat if we can actually remove the timer.
			 * Destruction may already be in progress in process
			 * context and we must give it a chance to terminate.
			 */
			if (FUNC8(ct))
				return -NF_REPEAT;
			return NF_DROP;
		}
		/* Fall through */
	case TCP_CONNTRACK_IGNORE:
		/* Ignored packets:
		 *
		 * Our connection entry may be out of sync, so ignore
		 * packets which may signal the real connection between
		 * the client and the server.
		 *
		 * a) SYN in ORIGINAL
		 * b) SYN/ACK in REPLY
		 * c) ACK in reply direction after initial SYN in original.
		 *
		 * If the ignored packet is invalid, the receiver will send
		 * a RST we'll catch below.
		 */
		if (index == TCP_SYNACK_SET
		    && ct->proto.tcp.last_index == TCP_SYN_SET
		    && ct->proto.tcp.last_dir != dir
		    && FUNC13(th->ack_seq) == ct->proto.tcp.last_end) {
			/* b) This SYN/ACK acknowledges a SYN that we earlier
			 * ignored as invalid. This means that the client and
			 * the server are both in sync, while the firewall is
			 * not. We get in sync from the previously annotated
			 * values.
			 */
			old_state = TCP_CONNTRACK_SYN_SENT;
			new_state = TCP_CONNTRACK_SYN_RECV;
			ct->proto.tcp.seen[ct->proto.tcp.last_dir].td_end =
				ct->proto.tcp.last_end;
			ct->proto.tcp.seen[ct->proto.tcp.last_dir].td_maxend =
				ct->proto.tcp.last_end;
			ct->proto.tcp.seen[ct->proto.tcp.last_dir].td_maxwin =
				ct->proto.tcp.last_win == 0 ?
					1 : ct->proto.tcp.last_win;
			ct->proto.tcp.seen[ct->proto.tcp.last_dir].td_scale =
				ct->proto_ext.last_wscale;
			ct->proto.tcp.seen[ct->proto.tcp.last_dir].flags =
				ct->proto_ext.last_flags;
			FUNC5(&ct->proto.tcp.seen[dir], 0,
			       sizeof(struct ip_ct_tcp_state));
			break;
		}
		ct->proto.tcp.last_index = index;
		ct->proto.tcp.last_dir = dir;
		ct->proto.tcp.last_seq = FUNC13(th->seq);
		ct->proto.tcp.last_end =
		    FUNC16(FUNC13(th->seq), skb->len, dataoff, th);
		ct->proto.tcp.last_win = FUNC14(th->window);

		/* a) This is a SYN in ORIGINAL. The client and the server
		 * may be in sync but we are not. In that case, we annotate
		 * the TCP options and let the packet go through. If it is a
		 * valid SYN packet, the server will reply with a SYN/ACK, and
		 * then we'll get in sync. Otherwise, the server ignores it. */
		if (index == TCP_SYN_SET && dir == IP_CT_DIR_ORIGINAL) {
			struct ip_ct_tcp_state seen = {};

			ct->proto_ext.last_flags =
			ct->proto_ext.last_wscale = 0;
			FUNC22(skb, dataoff, th, &seen);
			if (seen.flags & IP_CT_TCP_FLAG_WINDOW_SCALE) {
				ct->proto_ext.last_flags |=
					IP_CT_TCP_FLAG_WINDOW_SCALE;
				ct->proto_ext.last_wscale = seen.td_scale;
			}
			if (seen.flags & IP_CT_TCP_FLAG_SACK_PERM) {
				ct->proto_ext.last_flags |=
					IP_CT_TCP_FLAG_SACK_PERM;
			}
		}
		FUNC20(&ct->lock);
		if (FUNC2(net, IPPROTO_TCP))
			FUNC12(pf, 0, skb, NULL, NULL, NULL,
				  "nf_ct_tcp: invalid packet ignored ");
		return NF_ACCEPT;
	case TCP_CONNTRACK_MAX:
		/* Invalid packet */
		FUNC15("nf_ct_tcp: Invalid dir=%i index=%u ostate=%u\n",
			 dir, FUNC4(th), old_state);
		FUNC20(&ct->lock);
		if (FUNC2(net, IPPROTO_TCP))
			FUNC12(pf, 0, skb, NULL, NULL, NULL,
				  "nf_ct_tcp: invalid state ");
		return -NF_ACCEPT;
	case TCP_CONNTRACK_CLOSE:
		if (index == TCP_RST_SET
		    && (ct->proto.tcp.seen[!dir].flags & IP_CT_TCP_FLAG_MAXACK_SET)
		    && FUNC3(FUNC13(th->seq), ct->proto.tcp.seen[!dir].td_maxack)) {
			/* Invalid RST  */
			FUNC20(&ct->lock);
			if (FUNC2(net, IPPROTO_TCP))
				FUNC12(pf, 0, skb, NULL, NULL, NULL,
					  "nf_ct_tcp: invalid RST ");
			return -NF_ACCEPT;
		}
		if (index == TCP_RST_SET
		    && ((FUNC23(IPS_SEEN_REPLY_BIT, &ct->status)
			 && ct->proto.tcp.last_index == TCP_SYN_SET)
			|| (!FUNC23(IPS_ASSURED_BIT, &ct->status)
			    && ct->proto.tcp.last_index == TCP_ACK_SET))
		    && FUNC13(th->ack_seq) == ct->proto.tcp.last_end) {
			/* RST sent to invalid SYN or ACK we had let through
			 * at a) and c) above:
			 *
			 * a) SYN was in window then
			 * c) we hold a half-open connection.
			 *
			 * Delete our connection entry.
			 * We skip window checking, because packet might ACK
			 * segments we ignored. */
			goto in_window;
		}
		/* Just fall through */
	default:
		/* Keep compilers happy. */
		break;
	}

	if (!FUNC21(ct, &ct->proto.tcp, dir, index,
			   skb, dataoff, th, pf)) {
		FUNC20(&ct->lock);
		return -NF_ACCEPT;
	}
     in_window:
	/* From now on we have got in-window packets */
	ct->proto.tcp.last_index = index;
	ct->proto.tcp.last_dir = dir;

	FUNC15("tcp_conntracks: ");
	FUNC7(tuple);
	FUNC15("syn=%i ack=%i fin=%i rst=%i old=%i new=%i\n",
		 (th->syn ? 1 : 0), (th->ack ? 1 : 0),
		 (th->fin ? 1 : 0), (th->rst ? 1 : 0),
		 old_state, new_state);

	ct->proto.tcp.state = new_state;
	if (old_state != new_state
	    && new_state == TCP_CONNTRACK_FIN_WAIT)
		ct->proto.tcp.seen[dir].flags |= IP_CT_TCP_FLAG_CLOSE_INIT;

	if (ct->proto.tcp.retrans >= nf_ct_tcp_max_retrans &&
	    tcp_timeouts[new_state] > nf_ct_tcp_timeout_max_retrans)
		timeout = nf_ct_tcp_timeout_max_retrans;
	else if ((ct->proto.tcp.seen[0].flags | ct->proto.tcp.seen[1].flags) &
		 IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED &&
		 tcp_timeouts[new_state] > nf_ct_tcp_timeout_unacknowledged)
		timeout = nf_ct_tcp_timeout_unacknowledged;
	else
		timeout = tcp_timeouts[new_state];
	FUNC20(&ct->lock);

	if (new_state != old_state)
		FUNC6(IPCT_PROTOINFO, ct);

	if (!FUNC23(IPS_SEEN_REPLY_BIT, &ct->status)) {
		/* If only reply is a RST, we can consider ourselves not to
		   have an established connection: this is a fairly common
		   problem case, so we can delete the conntrack
		   immediately.  --RR */
		if (th->rst) {
			FUNC9(ct, ctinfo, skb);
			return NF_ACCEPT;
		}
	} else if (!FUNC23(IPS_ASSURED_BIT, &ct->status)
		   && (old_state == TCP_CONNTRACK_SYN_RECV
		       || old_state == TCP_CONNTRACK_ESTABLISHED)
		   && new_state == TCP_CONNTRACK_ESTABLISHED) {
		/* Set ASSURED if we see see valid ack in ESTABLISHED
		   after SYN_RECV or a valid answer for a picked up
		   connection. */
		FUNC17(IPS_ASSURED_BIT, &ct->status);
		FUNC6(IPCT_STATUS, ct);
	}
	FUNC11(ct, ctinfo, skb, timeout);

	return NF_ACCEPT;
}