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
struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct nilfs_segment_usage**,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct inode *sufile, __u64 segnum)
{
	struct buffer_head *bh_su;
	struct nilfs_segment_usage *raw_su;
	int err;

	err = FUNC2(sufile, segnum, &raw_su, &bh_su);
	if (FUNC4(err))
		return err;
	FUNC0(bh_su);
	FUNC1(sufile);
	FUNC3(sufile, segnum, bh_su);
	return 0;
}