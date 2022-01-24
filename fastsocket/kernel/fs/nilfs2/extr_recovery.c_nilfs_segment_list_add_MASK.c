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
struct nilfs_segment_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  segnum; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nilfs_segment_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct list_head *head, __u64 segnum)
{
	struct nilfs_segment_entry *ent = FUNC1(sizeof(*ent), GFP_NOFS);

	if (FUNC3(!ent))
		return -ENOMEM;

	ent->segnum = segnum;
	FUNC0(&ent->list);
	FUNC2(&ent->list, head);
	return 0;
}