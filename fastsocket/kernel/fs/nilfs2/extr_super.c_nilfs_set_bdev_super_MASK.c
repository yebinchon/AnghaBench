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
struct super_block {TYPE_1__* s_bdev; int /*<<< orphan*/  s_dev; } ;
struct nilfs_super_data {TYPE_1__* bdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(struct super_block *s, void *data)
{
	struct nilfs_super_data *sd = data;

	s->s_bdev = sd->bdev;
	s->s_dev = s->s_bdev->bd_dev;
	return 0;
}