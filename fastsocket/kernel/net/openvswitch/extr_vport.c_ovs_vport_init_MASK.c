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
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int VPORT_HASH_BUCKETS ; 
 int /*<<< orphan*/  dev_table ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

int FUNC1(void)
{
	dev_table = FUNC0(VPORT_HASH_BUCKETS * sizeof(struct hlist_head),
			    GFP_KERNEL);
	if (!dev_table)
		return -ENOMEM;

	return 0;
}