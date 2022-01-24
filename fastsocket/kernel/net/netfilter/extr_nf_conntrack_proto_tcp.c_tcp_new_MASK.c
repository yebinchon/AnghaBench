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
struct tcphdr {int /*<<< orphan*/  window; int /*<<< orphan*/  seq; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_3__ {size_t state; int /*<<< orphan*/  last_index; struct ip_ct_tcp_state* seen; } ;
struct TYPE_4__ {TYPE_1__ tcp; } ;
struct nf_conn {TYPE_2__ proto; } ;
struct ip_ct_tcp_state {int td_end; int td_maxwin; int td_maxend; int flags; scalar_t__ td_scale; } ;
typedef  enum tcp_conntrack { ____Placeholder_tcp_conntrack } tcp_conntrack ;
typedef  int /*<<< orphan*/  _tcph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IP_CT_TCP_FLAG_BE_LIBERAL ; 
 int IP_CT_TCP_FLAG_SACK_PERM ; 
 int TCP_CONNTRACK_MAX ; 
 size_t TCP_CONNTRACK_NONE ; 
 int TCP_CONNTRACK_SYN_SENT ; 
 int /*<<< orphan*/  TCP_NONE_SET ; 
 size_t FUNC1 (struct tcphdr const*) ; 
 scalar_t__ nf_ct_tcp_loose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct tcphdr const*) ; 
 struct tcphdr* FUNC6 (struct sk_buff const*,unsigned int,int,struct tcphdr*) ; 
 int*** tcp_conntracks ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff const*,unsigned int,struct tcphdr const*,struct ip_ct_tcp_state*) ; 

__attribute__((used)) static bool FUNC8(struct nf_conn *ct, const struct sk_buff *skb,
		    unsigned int dataoff)
{
	enum tcp_conntrack new_state;
	const struct tcphdr *th;
	struct tcphdr _tcph;
	const struct ip_ct_tcp_state *sender = &ct->proto.tcp.seen[0];
	const struct ip_ct_tcp_state *receiver = &ct->proto.tcp.seen[1];

	th = FUNC6(skb, dataoff, sizeof(_tcph), &_tcph);
	FUNC0(th == NULL);

	/* Don't need lock here: this conntrack not in circulation yet */
	new_state
		= tcp_conntracks[0][FUNC1(th)]
		[TCP_CONNTRACK_NONE];

	/* Invalid: delete conntrack */
	if (new_state >= TCP_CONNTRACK_MAX) {
		FUNC4("nf_ct_tcp: invalid new deleting.\n");
		return false;
	}

	if (new_state == TCP_CONNTRACK_SYN_SENT) {
		/* SYN packet */
		ct->proto.tcp.seen[0].td_end =
			FUNC5(FUNC2(th->seq), skb->len,
					     dataoff, th);
		ct->proto.tcp.seen[0].td_maxwin = FUNC3(th->window);
		if (ct->proto.tcp.seen[0].td_maxwin == 0)
			ct->proto.tcp.seen[0].td_maxwin = 1;
		ct->proto.tcp.seen[0].td_maxend =
			ct->proto.tcp.seen[0].td_end;

		FUNC7(skb, dataoff, th, &ct->proto.tcp.seen[0]);
		ct->proto.tcp.seen[1].flags = 0;
	} else if (nf_ct_tcp_loose == 0) {
		/* Don't try to pick up connections. */
		return false;
	} else {
		/*
		 * We are in the middle of a connection,
		 * its history is lost for us.
		 * Let's try to use the data from the packet.
		 */
		ct->proto.tcp.seen[0].td_end =
			FUNC5(FUNC2(th->seq), skb->len,
					     dataoff, th);
		ct->proto.tcp.seen[0].td_maxwin = FUNC3(th->window);
		if (ct->proto.tcp.seen[0].td_maxwin == 0)
			ct->proto.tcp.seen[0].td_maxwin = 1;
		ct->proto.tcp.seen[0].td_maxend =
			ct->proto.tcp.seen[0].td_end +
			ct->proto.tcp.seen[0].td_maxwin;
		ct->proto.tcp.seen[0].td_scale = 0;

		/* We assume SACK and liberal window checking to handle
		 * window scaling */
		ct->proto.tcp.seen[0].flags =
		ct->proto.tcp.seen[1].flags = IP_CT_TCP_FLAG_SACK_PERM |
					      IP_CT_TCP_FLAG_BE_LIBERAL;
	}

	ct->proto.tcp.seen[1].td_end = 0;
	ct->proto.tcp.seen[1].td_maxend = 0;
	ct->proto.tcp.seen[1].td_maxwin = 0;
	ct->proto.tcp.seen[1].td_scale = 0;

	/* tcp_packet will set them */
	ct->proto.tcp.state = TCP_CONNTRACK_NONE;
	ct->proto.tcp.last_index = TCP_NONE_SET;

	FUNC4("tcp_new: sender end=%u maxend=%u maxwin=%u scale=%i "
		 "receiver end=%u maxend=%u maxwin=%u scale=%i\n",
		 sender->td_end, sender->td_maxend, sender->td_maxwin,
		 sender->td_scale,
		 receiver->td_end, receiver->td_maxend, receiver->td_maxwin,
		 receiver->td_scale);
	return true;
}