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
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_holder*) ; 
 int FUNC6 (struct gfs2_inode*,struct buffer_head**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct gfs2_inode *ip, char **buf, unsigned int *len)
{
	struct gfs2_holder i_gh;
	struct buffer_head *dibh;
	unsigned int x, size;
	int error;

	FUNC4(ip->i_gl, LM_ST_SHARED, 0, &i_gh);
	error = FUNC3(&i_gh);
	if (error) {
		FUNC5(&i_gh);
		return error;
	}

	size = (unsigned int)FUNC7(&ip->i_inode);
	if (size == 0) {
		FUNC1(ip);
		error = -EIO;
		goto out;
	}

	error = FUNC6(ip, &dibh);
	if (error)
		goto out;

	x = size + 1;
	if (x > *len) {
		*buf = FUNC8(x, GFP_NOFS);
		if (!*buf) {
			error = -ENOMEM;
			goto out_brelse;
		}
	}

	FUNC9(*buf, dibh->b_data + sizeof(struct gfs2_dinode), x);
	*len = x;

out_brelse:
	FUNC0(dibh);
out:
	FUNC2(&i_gh);
	return error;
}