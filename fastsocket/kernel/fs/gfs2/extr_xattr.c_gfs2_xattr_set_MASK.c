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
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/  i_eattr; } ;
struct gfs2_ea_location {int /*<<< orphan*/  el_bh; scalar_t__ el_ea; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODATA ; 
 int EPERM ; 
 int ERANGE ; 
 int GFS2_DIF_APPENDONLY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned int GFS2_EA_MAX_NAME_LEN ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 struct gfs2_sbd* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int XATTR_CREATE ; 
 int XATTR_REPLACE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct gfs2_sbd*,unsigned int,size_t) ; 
 int FUNC7 (struct gfs2_inode*,int,char const*,void const*,size_t) ; 
 int FUNC8 (struct gfs2_inode*,int,char const*,void const*,size_t,struct gfs2_ea_location*) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_inode*,struct gfs2_ea_location*) ; 
 int FUNC10 (struct gfs2_inode*,int,char const*,struct gfs2_ea_location*) ; 
 int FUNC11 (struct inode*,int,char const*) ; 
 unsigned int FUNC12 (char const*) ; 

int FUNC13(struct inode *inode, int type, const char *name,
		   const void *value, size_t size, int flags)
{
	struct gfs2_sbd *sdp = FUNC2(inode);
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_ea_location el;
	unsigned int namel = FUNC12(name);
	int error;

	if (FUNC4(inode) || FUNC3(inode))
		return -EPERM;
	if (namel > GFS2_EA_MAX_NAME_LEN)
		return -ERANGE;

	if (value == NULL)
		return FUNC11(inode, type, name);

	if (FUNC6(sdp, namel, size))
		return -ERANGE;

	if (!ip->i_eattr) {
		if (flags & XATTR_REPLACE)
			return -ENODATA;
		return FUNC7(ip, type, name, value, size);
	}

	error = FUNC10(ip, type, name, &el);
	if (error)
		return error;

	if (el.el_ea) {
		if (ip->i_diskflags & GFS2_DIF_APPENDONLY) {
			FUNC5(el.el_bh);
			return -EPERM;
		}

		error = -EEXIST;
		if (!(flags & XATTR_CREATE)) {
			int unstuffed = !FUNC0(el.el_ea);
			error = FUNC8(ip, type, name, value, size, &el);
			if (!error && unstuffed)
				FUNC9(ip, &el);
		}

		FUNC5(el.el_bh);
		return error;
	}

	error = -ENODATA;
	if (!(flags & XATTR_REPLACE))
		error = FUNC8(ip, type, name, value, size, NULL);

	return error;
}