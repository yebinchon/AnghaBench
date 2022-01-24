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
struct gfs2_sbd {unsigned int sd_jbsize; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_inode; } ;
struct gfs2_ea_header {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/ * FUNC1 (struct gfs2_ea_header*) ; 
 unsigned int FUNC2 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  GFS2_METATYPE_ED ; 
 struct gfs2_sbd* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC7 (struct gfs2_sbd*,struct buffer_head*) ; 
 scalar_t__ FUNC8 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 struct buffer_head** FUNC9 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct gfs2_inode *ip, struct gfs2_ea_header *ea,
			    char *data)
{
	struct gfs2_sbd *sdp = FUNC3(&ip->i_inode);
	struct buffer_head **bh;
	unsigned int amount = FUNC2(ea);
	unsigned int nptrs = FUNC0(amount, sdp->sd_jbsize);
	__be64 *dataptrs = FUNC1(ea);
	unsigned int x;
	int error = 0;

	bh = FUNC9(nptrs, sizeof(struct buffer_head *), GFP_NOFS);
	if (!bh)
		return -ENOMEM;

	for (x = 0; x < nptrs; x++) {
		error = FUNC6(ip->i_gl, FUNC4(*dataptrs), 0,
				       bh + x);
		if (error) {
			while (x--)
				FUNC5(bh[x]);
			goto out;
		}
		dataptrs++;
	}

	for (x = 0; x < nptrs; x++) {
		error = FUNC7(sdp, bh[x]);
		if (error) {
			for (; x < nptrs; x++)
				FUNC5(bh[x]);
			goto out;
		}
		if (FUNC8(sdp, bh[x], GFS2_METATYPE_ED)) {
			for (; x < nptrs; x++)
				FUNC5(bh[x]);
			error = -EIO;
			goto out;
		}

		FUNC11(data, bh[x]->b_data + sizeof(struct gfs2_meta_header),
		       (sdp->sd_jbsize > amount) ? amount : sdp->sd_jbsize);

		amount -= sdp->sd_jbsize;
		data += sdp->sd_jbsize;

		FUNC5(bh[x]);
	}

out:
	FUNC10(bh);
	return error;
}