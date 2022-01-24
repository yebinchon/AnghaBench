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
typedef  unsigned int u64 ;
struct gfs2_rgrpd {unsigned int rd_reserved; int /*<<< orphan*/  rd_rsspin; } ;
struct gfs2_rbm {struct gfs2_rgrpd* rgd; } ;
struct gfs2_inode {struct gfs2_blkreserv* i_res; } ;
struct gfs2_blkreserv {scalar_t__ rs_free; int /*<<< orphan*/  rs_rbm; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_RS_CLAIM ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_blkreserv*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct gfs2_rbm const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC3 (struct gfs2_rbm const*) ; 
 scalar_t__ FUNC4 (struct gfs2_blkreserv*) ; 
 unsigned int FUNC5 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_blkreserv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct gfs2_inode *ip,
				    const struct gfs2_rbm *rbm, unsigned len)
{
	struct gfs2_blkreserv *rs = ip->i_res;
	struct gfs2_rgrpd *rgd = rbm->rgd;
	unsigned rlen;
	u64 block;
	int ret;

	FUNC6(&rgd->rd_rsspin);
	if (FUNC4(rs)) {
		if (FUNC1(&rs->rs_rbm, rbm)) {
			block = FUNC3(rbm);
			ret = FUNC2(&rs->rs_rbm, block + len);
			rlen = FUNC5(rs->rs_free, len);
			rs->rs_free -= rlen;
			rgd->rd_reserved -= rlen;
			FUNC8(rs, TRACE_RS_CLAIM);
			if (rs->rs_free && !ret)
				goto out;
		}
		FUNC0(rs);
	}
out:
	FUNC7(&rgd->rd_rsspin);
}