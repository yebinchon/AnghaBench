#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_eattr; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ea_call_t ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_3__ {int sd_inptrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_WAIT ; 
 int EIO ; 
 int GFS2_DIF_EA_INDIRECT ; 
 int /*<<< orphan*/  GFS2_METATYPE_IN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct gfs2_inode*,struct buffer_head*,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC5 (TYPE_1__*,struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gfs2_inode *ip, ea_call_t ea_call, void *data)
{
	struct buffer_head *bh, *eabh;
	__be64 *eablk, *end;
	int error;

	error = FUNC4(ip->i_gl, ip->i_eattr, DIO_WAIT, &bh);
	if (error)
		return error;

	if (!(ip->i_diskflags & GFS2_DIF_EA_INDIRECT)) {
		error = FUNC3(ip, bh, ea_call, data);
		goto out;
	}

	if (FUNC5(FUNC0(&ip->i_inode), bh, GFS2_METATYPE_IN)) {
		error = -EIO;
		goto out;
	}

	eablk = (__be64 *)(bh->b_data + sizeof(struct gfs2_meta_header));
	end = eablk + FUNC0(&ip->i_inode)->sd_inptrs;

	for (; eablk < end; eablk++) {
		u64 bn;

		if (!*eablk)
			break;
		bn = FUNC1(*eablk);

		error = FUNC4(ip->i_gl, bn, DIO_WAIT, &eabh);
		if (error)
			break;
		error = FUNC3(ip, eabh, ea_call, data);
		FUNC2(eabh);
		if (error)
			break;
	}
out:
	FUNC2(bh);
	return error;
}