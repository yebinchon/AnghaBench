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
struct super_block {int dummy; } ;
struct TYPE_2__ {int sb_fs_size; int /*<<< orphan*/ * sb_bmp_dir; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 

__attribute__((used)) static unsigned FUNC2(struct super_block *s)
{
	unsigned n, count, n_bands;
	n_bands = (FUNC1(s)->sb_fs_size + 0x3fff) >> 14;
	count = 0;
	for (n = 0; n < n_bands; n++)
		count += FUNC0(s, FUNC1(s)->sb_bmp_dir[n]);
	return count;
}