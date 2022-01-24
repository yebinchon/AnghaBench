#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;
struct gfs2_blkreserv {int /*<<< orphan*/  rs_free; TYPE_1__ rs_rbm; scalar_t__ rs_inum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,unsigned long long,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct seq_file *seq, struct gfs2_blkreserv *rs)
{
	FUNC0(seq, "  B: n:%llu s:%llu b:%u f:%u\n",
		       (unsigned long long)rs->rs_inum,
		       (unsigned long long)FUNC1(&rs->rs_rbm),
		       rs->rs_rbm.offset, rs->rs_free);
}