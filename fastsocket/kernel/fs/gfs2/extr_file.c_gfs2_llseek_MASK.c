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
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 scalar_t__ FUNC1 (struct file*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 

__attribute__((used)) static loff_t FUNC4(struct file *file, loff_t offset, int origin)
{
	struct gfs2_inode *ip = FUNC0(file->f_mapping->host);
	struct gfs2_holder i_gh;
	loff_t error;

	if (origin == 2) {
		error = FUNC3(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY,
					   &i_gh);
		if (!error) {
			error = FUNC1(file, offset, origin);
			FUNC2(&i_gh);
		}
	} else
		error = FUNC1(file, offset, origin);

	return error;
}