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
typedef  int /*<<< orphan*/  u64 ;
struct the_nilfs {int /*<<< orphan*/  ns_last_segment_lock; int /*<<< orphan*/  ns_last_cno; int /*<<< orphan*/  ns_last_seq; int /*<<< orphan*/  ns_last_pseg; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct the_nilfs *nilfs,
			    sector_t start_blocknr, u64 seq, __u64 cno)
{
	FUNC0(&nilfs->ns_last_segment_lock);
	nilfs->ns_last_pseg = start_blocknr;
	nilfs->ns_last_seq = seq;
	nilfs->ns_last_cno = cno;
	FUNC1(&nilfs->ns_last_segment_lock);
}