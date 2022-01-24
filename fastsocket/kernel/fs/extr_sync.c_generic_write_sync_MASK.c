#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dentry; } ;
struct file {int f_flags; TYPE_2__ f_path; TYPE_1__* f_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int O_SYNC ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 

int FUNC2(struct file *file, loff_t pos, loff_t count)
{
	if (!(file->f_flags & O_SYNC) && !FUNC0(file->f_mapping->host))
		return 0;
	return FUNC1(file, file->f_path.dentry, pos,
			       pos + count - 1, 1);
}