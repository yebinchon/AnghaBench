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
struct TYPE_2__ {unsigned int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_inode*,scalar_t__) ; 
 int FUNC2 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct gfs2_inode *ip, const char *buf,
				  unsigned int offset, unsigned int size)
{
	struct buffer_head *dibh;
	int error;

	error = FUNC2(ip, &dibh);
	if (error)
		return error;

	FUNC3(ip->i_gl, dibh);
	FUNC5(dibh->b_data + offset + sizeof(struct gfs2_dinode), buf, size);
	if (ip->i_inode.i_size < offset + size)
		FUNC4(&ip->i_inode, offset + size);
	ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;
	FUNC1(ip, dibh->b_data);

	FUNC0(dibh);

	return size;
}