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
struct qstr {char* name; int /*<<< orphan*/  len; int /*<<< orphan*/  hash; } ;
struct gfs2_sbd {int sd_journals; int /*<<< orphan*/  sd_jindex_mutex; int /*<<< orphan*/  sd_jindex_spin; int /*<<< orphan*/  sd_jindex_list; int /*<<< orphan*/  sd_jindex; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_list; scalar_t__ jd_jid; int /*<<< orphan*/  jd_inode; int /*<<< orphan*/  jd_work; int /*<<< orphan*/  extent_list; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct qstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct qstr*,int) ; 
 int /*<<< orphan*/  gfs2_recover_ops ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_jdesc*) ; 
 struct gfs2_jdesc* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 

__attribute__((used)) static int FUNC18(struct gfs2_sbd *sdp, struct gfs2_holder *ji_gh)
{
	struct gfs2_inode *dip = FUNC0(sdp->sd_jindex);
	struct qstr name;
	char buf[20];
	struct gfs2_jdesc *jd;
	int error;

	name.name = buf;

	FUNC12(&sdp->sd_jindex_mutex);

	for (;;) {
		error = FUNC7(dip->i_gl, LM_ST_SHARED, 0, ji_gh);
		if (error)
			break;

		name.len = FUNC17(buf, "journal%u", sdp->sd_journals);
		name.hash = FUNC5(name.name, name.len);

		error = FUNC4(sdp->sd_jindex, &name, NULL);
		if (error == -ENOENT) {
			error = 0;
			break;
		}

		FUNC6(ji_gh);

		if (error)
			break;

		error = -ENOMEM;
		jd = FUNC10(sizeof(struct gfs2_jdesc), GFP_KERNEL);
		if (!jd)
			break;

		FUNC1(&jd->extent_list);
		FUNC14(&jd->jd_work, &gfs2_recover_ops);
		jd->jd_inode = FUNC8(sdp->sd_jindex, &name, 1);
		if (!jd->jd_inode || FUNC2(jd->jd_inode)) {
			if (!jd->jd_inode)
				error = -ENOENT;
			else
				error = FUNC3(jd->jd_inode);
			FUNC9(jd);
			break;
		}

		FUNC15(&sdp->sd_jindex_spin);
		jd->jd_jid = sdp->sd_journals++;
		FUNC11(&jd->jd_list, &sdp->sd_jindex_list);
		FUNC16(&sdp->sd_jindex_spin);
	}

	FUNC13(&sdp->sd_jindex_mutex);

	return error;
}