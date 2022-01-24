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
struct v9fs_session_info {int dummy; } ;
struct super_block {int dummy; } ;
struct p9_wstat {int /*<<< orphan*/  qid; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  mode; } ;
struct p9_fid {int dummy; } ;
struct inode {int /*<<< orphan*/  qid; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 struct p9_wstat* FUNC0 (struct p9_wstat*) ; 
 struct p9_wstat* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct p9_wstat*) ; 
 int FUNC3 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_wstat*) ; 
 struct p9_wstat* FUNC5 (struct p9_fid*) ; 
 int FUNC6 (struct v9fs_session_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_wstat*) ; 
 struct p9_wstat* FUNC9 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct p9_wstat*,struct p9_wstat*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC12 (struct p9_wstat*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inode *
FUNC13(struct v9fs_session_info *v9ses, struct p9_fid *fid,
	struct super_block *sb)
{
	int err, umode;
	struct inode *ret;
	struct p9_wstat *st;

	ret = NULL;
	st = FUNC5(fid);
	if (FUNC2(st))
		return FUNC0(st);

	umode = FUNC6(v9ses, st->mode);
	ret = FUNC9(sb, umode);
	if (FUNC2(ret)) {
		err = FUNC3(ret);
		goto error;
	}

	FUNC11(st, ret, sb);
	ret->i_ino = FUNC10(&st->qid);

#ifdef CONFIG_9P_FSCACHE
	v9fs_vcookie_set_qid(ret, &st->qid);
	v9fs_cache_inode_get_cookie(ret);
#endif
	FUNC7(st);
	FUNC4(st);

	return ret;

error:
	FUNC7(st);
	FUNC4(st);
	return FUNC1(err);
}