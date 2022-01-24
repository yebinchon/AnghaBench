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
struct qstr {int hash; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_next; } ;
struct gfs2_inode {int i_diskflags; int i_depth; } ;
struct gfs2_dirent {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_size; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  gfs2_dscan_t ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_dirent* FUNC0 (int) ; 
 int GFS2_DIF_EXHASH ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct gfs2_inode*,unsigned int,struct buffer_head**) ; 
 int FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 
 struct gfs2_dirent* FUNC8 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr const*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct gfs2_inode*,struct buffer_head**) ; 
 unsigned int FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static struct gfs2_dirent *FUNC12(struct inode *inode,
					      const struct qstr *name,
					      gfs2_dscan_t scan,
					      struct buffer_head **pbh)
{
	struct buffer_head *bh;
	struct gfs2_dirent *dent;
	struct gfs2_inode *ip = FUNC1(inode);
	int error;

	if (ip->i_diskflags & GFS2_DIF_EXHASH) {
		struct gfs2_leaf *leaf;
		unsigned hsize = 1 << ip->i_depth;
		unsigned index;
		u64 ln;
		if (hsize * sizeof(u64) != FUNC10(inode)) {
			FUNC7(ip);
			return FUNC0(-EIO);
		}

		index = name->hash >> (32 - ip->i_depth);
		error = FUNC5(ip, index, &bh);
		if (error)
			return FUNC0(error);
		do {
			dent = FUNC8(inode, bh->b_data, bh->b_size,
						scan, name, NULL);
			if (dent)
				goto got_dent;
			leaf = (struct gfs2_leaf *)bh->b_data;
			ln = FUNC3(leaf->lf_next);
			FUNC4(bh);
			if (!ln)
				break;

			error = FUNC6(ip, ln, &bh);
		} while(!error);

		return error ? FUNC0(error) : NULL;
	}


	error = FUNC9(ip, &bh);
	if (error)
		return FUNC0(error);
	dent = FUNC8(inode, bh->b_data, bh->b_size, scan, name, NULL);
got_dent:
	if (FUNC11(dent == NULL || FUNC2(dent))) {
		FUNC4(bh);
		bh = NULL;
	}
	*pbh = bh;
	return dent;
}