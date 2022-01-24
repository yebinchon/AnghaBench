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
struct gfs2_inode {scalar_t__ i_eattr; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_ea_request {char* er_data; size_t er_data_len; } ;
struct ea_list {int ei_size; struct gfs2_ea_request* ei_er; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC1 (struct gfs2_inode*,int /*<<< orphan*/ ,struct ea_list*) ; 
 int /*<<< orphan*/  ea_list_i ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_ea_request*,int /*<<< orphan*/ ,int) ; 

ssize_t FUNC5(struct dentry *dentry, char *buffer, size_t size)
{
	struct gfs2_inode *ip = FUNC0(dentry->d_inode);
	struct gfs2_ea_request er;
	struct gfs2_holder i_gh;
	int error;

	FUNC4(&er, 0, sizeof(struct gfs2_ea_request));
	if (size) {
		er.er_data = buffer;
		er.er_data_len = size;
	}

	error = FUNC3(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &i_gh);
	if (error)
		return error;

	if (ip->i_eattr) {
		struct ea_list ei = { .ei_er = &er, .ei_size = 0 };

		error = FUNC1(ip, ea_list_i, &ei);
		if (!error)
			error = ei.ei_size;
	}

	FUNC2(&i_gh);

	return error;
}