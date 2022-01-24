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
struct minix_sb_info {unsigned long s_log_zone_size; scalar_t__ s_firstdatazone; scalar_t__ s_nzones; int /*<<< orphan*/  s_zmap_blocks; int /*<<< orphan*/  s_zmap; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

unsigned long FUNC1(struct minix_sb_info *sbi)
{
	return (FUNC0(sbi->s_zmap, sbi->s_zmap_blocks,
		sbi->s_nzones - sbi->s_firstdatazone + 1)
		<< sbi->s_log_zone_size);
}