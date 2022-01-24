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
typedef  int /*<<< orphan*/  u32 ;
struct nf_nat_seq {scalar_t__ offset_before; scalar_t__ offset_after; int /*<<< orphan*/  correction_pos; } ;
struct nf_conn_nat {struct nf_nat_seq* seq; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_nat_seq*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_nat_seqofs_lock ; 
 struct nf_conn_nat* FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC7(u32 seq,
		    int sizediff,
		    struct nf_conn *ct,
		    enum ip_conntrack_info ctinfo)
{
	int dir;
	struct nf_nat_seq *this_way, *other_way;
	struct nf_conn_nat *nat = FUNC3(ct);

	FUNC4("adjust_tcp_sequence: seq = %u, sizediff = %d\n", seq, seq);

	dir = FUNC0(ctinfo);

	this_way = &nat->seq[dir];
	other_way = &nat->seq[!dir];

	FUNC4("nf_nat_resize_packet: Seq_offset before: ");
	FUNC1(this_way);

	FUNC5(&nf_nat_seqofs_lock);

	/* SYN adjust. If it's uninitialized, or this is after last
	 * correction, record it: we don't handle more than one
	 * adjustment in the window, but do deal with common case of a
	 * retransmit */
	if (this_way->offset_before == this_way->offset_after ||
	    FUNC2(this_way->correction_pos, seq)) {
		   this_way->correction_pos = seq;
		   this_way->offset_before = this_way->offset_after;
		   this_way->offset_after += sizediff;
	}
	FUNC6(&nf_nat_seqofs_lock);

	FUNC4("nf_nat_resize_packet: Seq_offset after: ");
	FUNC1(this_way);
}