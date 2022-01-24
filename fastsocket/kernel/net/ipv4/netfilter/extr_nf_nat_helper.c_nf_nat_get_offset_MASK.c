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
struct nf_nat_seq {int /*<<< orphan*/  offset_before; int /*<<< orphan*/  offset_after; int /*<<< orphan*/  correction_pos; } ;
struct nf_conn_nat {struct nf_nat_seq* seq; } ;
struct nf_conn {int dummy; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_nat_seqofs_lock ; 
 struct nf_conn_nat* FUNC1 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

s16 FUNC4(const struct nf_conn *ct,
		      enum ip_conntrack_dir dir,
		      u32 seq)
{
	struct nf_conn_nat *nat = FUNC1(ct);
	struct nf_nat_seq *this_way;
	s16 offset;

	if (!nat)
		return 0;

	this_way = &nat->seq[dir];
	FUNC2(&nf_nat_seqofs_lock);
	offset = FUNC0(seq, this_way->correction_pos)
		 ? this_way->offset_after : this_way->offset_before;
	FUNC3(&nf_nat_seqofs_lock);

	return offset;
}