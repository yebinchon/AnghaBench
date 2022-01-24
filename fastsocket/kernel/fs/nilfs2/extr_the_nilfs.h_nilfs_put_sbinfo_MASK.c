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
struct nilfs_sb_info {int /*<<< orphan*/  s_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_sb_info*) ; 

__attribute__((used)) static inline void FUNC2(struct nilfs_sb_info *sbi)
{
	if (FUNC0(&sbi->s_count))
		FUNC1(sbi);
}