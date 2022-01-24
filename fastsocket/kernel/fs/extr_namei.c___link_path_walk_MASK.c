#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct qstr {char const* name; int len; int /*<<< orphan*/  hash; } ;
struct path {TYPE_5__* dentry; } ;
struct TYPE_12__ {TYPE_6__* dentry; } ;
struct nameidata {unsigned int flags; TYPE_10__ path; int /*<<< orphan*/  last_type; struct qstr last; scalar_t__ depth; } ;
struct inode {TYPE_3__* i_op; } ;
struct filename {char* name; } ;
struct TYPE_18__ {struct inode* d_inode; TYPE_4__* d_op; TYPE_2__* d_sb; } ;
struct TYPE_17__ {struct inode* d_inode; } ;
struct TYPE_16__ {int (* d_hash ) (TYPE_6__*,struct qstr*) ;int /*<<< orphan*/  (* d_revalidate ) (TYPE_6__*,struct nameidata*) ;int /*<<< orphan*/  (* d_weak_revalidate ) (TYPE_6__*,struct nameidata*) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  lookup; scalar_t__ follow_link; } ;
struct TYPE_14__ {TYPE_1__* s_type; } ;
struct TYPE_13__ {int fs_flags; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTDIR ; 
 int ESTALE ; 
 int FS_REVAL_DOT ; 
 int FS_WEAK_REVALIDATE ; 
 int /*<<< orphan*/  LAST_DOT ; 
 int /*<<< orphan*/  LAST_DOTDOT ; 
 int /*<<< orphan*/  LAST_NORM ; 
 unsigned int LOOKUP_CONTINUE ; 
 unsigned int LOOKUP_DIRECTORY ; 
 unsigned int LOOKUP_FOLLOW ; 
 unsigned int LOOKUP_PARENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct filename*,TYPE_6__*,unsigned int) ; 
 int FUNC2 (struct path*,struct nameidata*) ; 
 int FUNC3 (struct nameidata*,struct qstr*,struct path*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct nameidata*) ; 
 scalar_t__ FUNC7 (struct inode*,unsigned int) ; 
 unsigned long FUNC8 () ; 
 unsigned long FUNC9 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC11 (struct path*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC12 (struct path*,struct nameidata*) ; 
 int FUNC13 (TYPE_6__*,struct qstr*) ; 
 int FUNC14 (TYPE_6__*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,struct nameidata*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct filename *filename, struct nameidata *nd)
{
	struct path next;
	struct inode *inode;
	int err;
	unsigned int lookup_flags = nd->flags;
	const char *name = filename->name;
	
	while (*name=='/')
		name++;
	if (!*name)
		goto return_reval;

	inode = nd->path.dentry->d_inode;
	if (nd->depth)
		lookup_flags = LOOKUP_FOLLOW | (nd->flags & LOOKUP_CONTINUE);

	/* At this point we know we have a real path component. */
	for(;;) {
		unsigned long hash;
		struct qstr this;
		unsigned int c;

		nd->flags |= LOOKUP_CONTINUE;
		err = FUNC5(inode);
 		if (err)
			break;

		this.name = name;
		c = *(const unsigned char *)name;

		hash = FUNC8();
		do {
			name++;
			hash = FUNC9(c, hash);
			c = *(const unsigned char *)name;
		} while (c && (c != '/'));
		this.len = name - (const char *) this.name;
		this.hash = FUNC4(hash);

		/* remove trailing slashes? */
		if (!c)
			goto last_component;
		while (*++name == '/');
		if (!*name)
			goto last_with_slashes;

		/*
		 * "." and ".." are special - ".." especially so because it has
		 * to be able to know about the current root directory and
		 * parent relationships.
		 */
		if (this.name[0] == '.') switch (this.len) {
			default:
				break;
			case 2:	
				if (this.name[1] != '.')
					break;
				FUNC6(nd);
				inode = nd->path.dentry->d_inode;
				/* fallthrough */
			case 1:
				continue;
		}
		/*
		 * See if the low-level filesystem might want
		 * to use its own hash..
		 */
		if (nd->path.dentry->d_op && nd->path.dentry->d_op->d_hash) {
			err = nd->path.dentry->d_op->d_hash(nd->path.dentry,
							    &this);
			if (err < 0)
				break;
		}
		/* This does the actual lookups.. */
		err = FUNC3(nd, &this, &next);
		if (err)
			break;

		err = -ENOENT;
		inode = next.dentry->d_inode;
		if (!inode)
			goto out_dput;

		if (inode->i_op->follow_link) {
			err = FUNC2(&next, nd);
			if (err)
				goto return_err;
			err = -ENOENT;
			inode = nd->path.dentry->d_inode;
			if (!inode)
				break;
		} else
			FUNC12(&next, nd);
		err = -ENOTDIR; 
		if (!inode->i_op->lookup)
			break;
		continue;
		/* here ends the main loop */

last_with_slashes:
		lookup_flags |= LOOKUP_FOLLOW | LOOKUP_DIRECTORY;
last_component:
		/* Clear LOOKUP_CONTINUE iff it was previously unset */
		nd->flags &= lookup_flags | ~LOOKUP_CONTINUE;
		if (lookup_flags & LOOKUP_PARENT)
			goto lookup_parent;
		if (this.name[0] == '.') switch (this.len) {
			default:
				break;
			case 2:	
				if (this.name[1] != '.')
					break;
				FUNC6(nd);
				inode = nd->path.dentry->d_inode;
				/* fallthrough */
			case 1:
				goto return_reval;
		}
		if (nd->path.dentry->d_op && nd->path.dentry->d_op->d_hash) {
			err = nd->path.dentry->d_op->d_hash(nd->path.dentry,
							    &this);
			if (err < 0)
				break;
		}
		err = FUNC3(nd, &this, &next);
		if (err)
			break;
		inode = next.dentry->d_inode;
		if (FUNC7(inode, lookup_flags)) {
			err = FUNC2(&next, nd);
			if (err)
				goto return_err;
			inode = nd->path.dentry->d_inode;
		} else
			FUNC12(&next, nd);
		err = -ENOENT;
		if (!inode)
			break;
		if (lookup_flags & LOOKUP_DIRECTORY) {
			err = -ENOTDIR; 
			if (!inode->i_op->lookup)
				break;
		}
		goto return_base;
lookup_parent:
		nd->last = this;
		nd->last_type = LAST_NORM;
		if (this.name[0] != '.')
			goto return_base;
		if (this.len == 1)
			nd->last_type = LAST_DOT;
		else if (this.len == 2 && this.name[1] == '.')
			nd->last_type = LAST_DOTDOT;
		else
			goto return_base;
return_reval:
		/*
		 * We bypassed the ordinary revalidation routines.
		 * We may need to check the cached dentry for staleness.
		 */
		if (nd->path.dentry && nd->path.dentry->d_sb) {
			int fs_flags = nd->path.dentry->d_sb->s_type->fs_flags;

			if (fs_flags & FS_REVAL_DOT) {
				err = -ESTALE;

				/* Note: we do not d_invalidate() */
				if (fs_flags & FS_WEAK_REVALIDATE) {
					if (!nd->path.dentry->d_op->d_weak_revalidate(nd->path.dentry, nd))
						break;
				} else {
					if (!nd->path.dentry->d_op->d_revalidate(nd->path.dentry, nd))
						break;
				}
			}
		}
return_base:
		return 0;
out_dput:
		FUNC11(&next, nd);
		break;
	}
	if (FUNC17(!FUNC0()) && nd->path.dentry->d_inode)
		FUNC1(filename, nd->path.dentry,
				nd->flags & LOOKUP_PARENT);
	FUNC10(&nd->path);
return_err:
	return err;
}