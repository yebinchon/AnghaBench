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
struct ocfs2_super {int max_slots; } ;
struct ocfs2_extended_slot {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  ML_ERROR ; 
 unsigned long long FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC2 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC3(struct ocfs2_super *osb,
					struct inode *inode,
					unsigned long long *bytes)
{
	unsigned long long bytes_needed;

	if (FUNC2(osb)) {
		bytes_needed = osb->max_slots *
			sizeof(struct ocfs2_extended_slot);
	} else {
		bytes_needed = osb->max_slots * sizeof(__le16);
	}
	if (bytes_needed > FUNC0(inode)) {
		FUNC1(ML_ERROR,
		     "Slot map file is too small!  (size %llu, needed %llu)\n",
		     FUNC0(inode), bytes_needed);
		return -ENOSPC;
	}

	*bytes = bytes_needed;
	return 0;
}