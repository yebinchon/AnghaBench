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
struct xattr_handler {scalar_t__ (* list ) (struct inode*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct jffs2_xattr_ref {struct jffs2_xattr_ref* next; struct jffs2_xattr_datum* xd; struct jffs2_inode_cache* ic; } ;
struct jffs2_xattr_datum {int /*<<< orphan*/  name_len; int /*<<< orphan*/  xname; int /*<<< orphan*/  xprefix; } ;
struct jffs2_sb_info {int /*<<< orphan*/  xattr_sem; } ;
struct jffs2_inode_info {struct jffs2_inode_cache* inocache; } ;
struct jffs2_inode_cache {struct jffs2_xattr_ref* xref; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {struct inode* d_inode; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct jffs2_inode_info* FUNC1 (struct inode*) ; 
 struct jffs2_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct jffs2_sb_info*,struct jffs2_inode_cache*) ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_sb_info*,struct jffs2_xattr_ref*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct jffs2_sb_info*,struct jffs2_xattr_datum*) ; 
 scalar_t__ FUNC8 (struct inode*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct inode*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct xattr_handler* FUNC13 (int /*<<< orphan*/ ) ; 

ssize_t FUNC14(struct dentry *dentry, char *buffer, size_t size)
{
	struct inode *inode = dentry->d_inode;
	struct jffs2_inode_info *f = FUNC1(inode);
	struct jffs2_sb_info *c = FUNC2(inode->i_sb);
	struct jffs2_inode_cache *ic = f->inocache;
	struct jffs2_xattr_ref *ref, **pref;
	struct jffs2_xattr_datum *xd;
	struct xattr_handler *xhandle;
	ssize_t len, rc;
	int retry = 0;

	rc = FUNC3(c, ic);
	if (FUNC10(rc))
		return rc;

	FUNC5(&c->xattr_sem);
 retry:
	len = 0;
	for (ref=ic->xref, pref=&ic->xref; ref; pref=&ref->next, ref=ref->next) {
		FUNC0(ref->ic != ic);
		xd = ref->xd;
		if (!xd->xname) {
			/* xdatum is unchached */
			if (!retry) {
				retry = 1;
				FUNC11(&c->xattr_sem);
				FUNC6(&c->xattr_sem);
				goto retry;
			} else {
				rc = FUNC7(c, xd);
				if (FUNC10(rc > 0)) {
					*pref = ref->next;
					FUNC4(c, ref);
					goto retry;
				} else if (FUNC10(rc < 0))
					goto out;
			}
		}
		xhandle = FUNC13(xd->xprefix);
		if (!xhandle)
			continue;
		if (buffer) {
			rc = xhandle->list(inode, buffer+len, size-len, xd->xname, xd->name_len);
		} else {
			rc = xhandle->list(inode, NULL, 0, xd->xname, xd->name_len);
		}
		if (rc < 0)
			goto out;
		len += rc;
	}
	rc = len;
 out:
	if (!retry) {
		FUNC11(&c->xattr_sem);
	} else {
		FUNC12(&c->xattr_sem);
	}
	return rc;
}