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
struct page {int dummy; } ;
struct inode {TYPE_1__* i_flock; } ;
struct file {int f_flags; } ;
struct TYPE_2__ {scalar_t__ fl_start; scalar_t__ fl_end; scalar_t__ fl_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_WRITE ; 
 scalar_t__ F_RDLCK ; 
 scalar_t__ OFFSET_MAX ; 
 int O_SYNC ; 
 scalar_t__ FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,struct inode*) ; 

__attribute__((used)) static int FUNC2(struct file *file, struct page *page, struct inode *inode)
{
	if (file->f_flags & O_SYNC)
		return 0;
	if (!FUNC1(page, inode))
		return 0;
	if (FUNC0(inode, FMODE_WRITE))
		return 1;
	if (inode->i_flock == NULL || (inode->i_flock->fl_start == 0 &&
			inode->i_flock->fl_end == OFFSET_MAX &&
			inode->i_flock->fl_type != F_RDLCK))
		return 1;
	return 0;
}