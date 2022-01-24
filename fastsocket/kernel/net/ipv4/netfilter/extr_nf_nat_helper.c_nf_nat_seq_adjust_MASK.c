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
struct tcphdr {void* seq; void* ack_seq; int /*<<< orphan*/  check; } ;
struct sk_buff {scalar_t__ data; } ;
struct nf_nat_seq {scalar_t__ offset_before; scalar_t__ offset_after; int /*<<< orphan*/  correction_pos; } ;
struct nf_conn_nat {struct nf_nat_seq* seq; } ;
struct nf_conn {int dummy; } ;
typedef  scalar_t__ s16 ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  void* __be32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*,void*,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,struct tcphdr*,struct nf_conn*,int) ; 
 struct nf_conn_nat* FUNC6 (struct nf_conn*) ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

int
FUNC10(struct sk_buff *skb,
		  struct nf_conn *ct,
		  enum ip_conntrack_info ctinfo)
{
	struct tcphdr *tcph;
	int dir;
	__be32 newseq, newack;
	s16 seqoff, ackoff;
	struct nf_conn_nat *nat = FUNC6(ct);
	struct nf_nat_seq *this_way, *other_way;

	dir = FUNC0(ctinfo);

	this_way = &nat->seq[dir];
	other_way = &nat->seq[!dir];

	if (!FUNC9(skb, FUNC4(skb) + sizeof(*tcph)))
		return 0;

	tcph = (void *)skb->data + FUNC4(skb);
	if (FUNC1(FUNC7(tcph->seq), this_way->correction_pos))
		seqoff = this_way->offset_after;
	else
		seqoff = this_way->offset_before;

	if (FUNC1(FUNC7(tcph->ack_seq) - other_way->offset_before,
		  other_way->correction_pos))
		ackoff = other_way->offset_after;
	else
		ackoff = other_way->offset_before;

	newseq = FUNC2(FUNC7(tcph->seq) + seqoff);
	newack = FUNC2(FUNC7(tcph->ack_seq) - ackoff);

	FUNC3(&tcph->check, skb, tcph->seq, newseq, 0);
	FUNC3(&tcph->check, skb, tcph->ack_seq, newack, 0);

	FUNC8("Adjusting sequence number from %u->%u, ack from %u->%u\n",
		 FUNC7(tcph->seq), FUNC7(newseq), FUNC7(tcph->ack_seq),
		 FUNC7(newack));

	tcph->seq = newseq;
	tcph->ack_seq = newack;

	return FUNC5(skb, tcph, ct, ctinfo);
}