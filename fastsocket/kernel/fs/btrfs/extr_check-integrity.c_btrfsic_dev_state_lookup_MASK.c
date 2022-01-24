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
struct btrfsic_dev_state {int dummy; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  btrfsic_dev_state_hashtable ; 
 struct btrfsic_dev_state* FUNC0 (struct block_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct btrfsic_dev_state *FUNC1(
		struct block_device *bdev)
{
	struct btrfsic_dev_state *ds;

	ds = FUNC0(bdev,
						&btrfsic_dev_state_hashtable);
	return ds;
}