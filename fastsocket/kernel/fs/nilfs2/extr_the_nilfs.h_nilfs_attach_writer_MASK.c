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
struct the_nilfs {int /*<<< orphan*/  ns_writer_sem; struct nilfs_sb_info* ns_writer; } ;
struct nilfs_sb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(struct the_nilfs *nilfs, struct nilfs_sb_info *sbi)
{
	FUNC0(&nilfs->ns_writer_sem);
	nilfs->ns_writer = sbi;
	FUNC1(&nilfs->ns_writer_sem);
}