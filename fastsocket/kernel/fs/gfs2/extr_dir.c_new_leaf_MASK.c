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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct qstr {char* name; int /*<<< orphan*/  hash; int /*<<< orphan*/  len; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_reserved; scalar_t__ lf_next; int /*<<< orphan*/  lf_dirent_format; scalar_t__ lf_entries; int /*<<< orphan*/  lf_depth; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_dirent {int dummy; } ;
struct buffer_head {scalar_t__ b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_FORMAT_DE ; 
 int /*<<< orphan*/  GFS2_FORMAT_LF ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GFS2_METATYPE_LF ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qstr*,scalar_t__,struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct gfs2_leaf *FUNC11(struct inode *inode, struct buffer_head **pbh, u16 depth)
{
	struct gfs2_inode *ip = FUNC0(inode);
	unsigned int n = 1;
	u64 bn;
	int error;
	struct buffer_head *bh;
	struct gfs2_leaf *leaf;
	struct gfs2_dirent *dent;
	struct qstr name = { .name = "", .len = 0, .hash = 0 };

	error = FUNC4(ip, &bn, &n, 0, NULL);
	if (error)
		return NULL;
	bh = FUNC5(ip->i_gl, bn);
	if (!bh)
		return NULL;

	FUNC9(FUNC1(inode), bn, 1);
	FUNC8(ip->i_gl, bh);
	FUNC6(bh, GFS2_METATYPE_LF, GFS2_FORMAT_LF);
	leaf = (struct gfs2_leaf *)bh->b_data;
	leaf->lf_depth = FUNC2(depth);
	leaf->lf_entries = 0;
	leaf->lf_dirent_format = FUNC3(GFS2_FORMAT_DE);
	leaf->lf_next = 0;
	FUNC10(leaf->lf_reserved, 0, sizeof(leaf->lf_reserved));
	dent = (struct gfs2_dirent *)(leaf+1);
	FUNC7(&name, bh->b_size - sizeof(struct gfs2_leaf), dent);
	*pbh = bh;
	return leaf;
}