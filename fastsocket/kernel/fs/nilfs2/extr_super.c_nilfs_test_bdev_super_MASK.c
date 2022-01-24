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
struct super_block {void* s_fs_info; } ;
struct nilfs_super_data {scalar_t__ sbi; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(struct super_block *s, void *data)
{
	struct nilfs_super_data *sd = data;

	return sd->sbi && s->s_fs_info == (void *)sd->sbi;
}