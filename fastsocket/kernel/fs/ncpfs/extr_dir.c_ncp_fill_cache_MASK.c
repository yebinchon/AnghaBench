#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct qstr {int len; int /*<<< orphan*/ * name; int /*<<< orphan*/  hash; } ;
struct TYPE_7__ {int /*<<< orphan*/  NSCreator; int /*<<< orphan*/  nameLen; int /*<<< orphan*/  entryName; } ;
struct ncp_entry_info {void* ino; scalar_t__ opened; TYPE_2__ i; } ;
struct ncp_cache_control {scalar_t__ fpos; size_t idx; int ofs; scalar_t__ filled; int /*<<< orphan*/  valid; TYPE_5__* cache; scalar_t__ page; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_data; void* i_ino; } ;
struct TYPE_6__ {struct dentry* dentry; } ;
struct file {scalar_t__ f_pos; TYPE_1__ f_path; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; scalar_t__ name; } ;
struct dentry {void* d_fsdata; struct inode* d_inode; TYPE_4__* d_op; TYPE_3__ d_name; } ;
typedef  void* ino_t ;
typedef  scalar_t__ (* filldir_t ) (void*,int /*<<< orphan*/ *,int,scalar_t__,void*,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __name ;
struct TYPE_10__ {struct dentry** dentry; } ;
struct TYPE_9__ {scalar_t__ (* d_hash ) (struct dentry*,struct qstr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 size_t NCP_DIRCACHE_SIZE ; 
 int /*<<< orphan*/  NCP_MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC4 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 void* FUNC7 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int) ; 
 TYPE_5__* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__ ncp_dentry_operations ; 
 struct inode* FUNC14 (int /*<<< orphan*/ ,struct ncp_entry_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct ncp_entry_info*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 

__attribute__((used)) static int
FUNC22(struct file *filp, void *dirent, filldir_t filldir,
		struct ncp_cache_control *ctrl, struct ncp_entry_info *entry)
{
	struct dentry *newdent, *dentry = filp->f_path.dentry;
	struct inode *newino, *inode = dentry->d_inode;
	struct ncp_cache_control ctl = *ctrl;
	struct qstr qname;
	int valid = 0;
	int hashed = 0;
	ino_t ino = 0;
	__u8 __name[NCP_MAXPATHLEN + 1];

	qname.len = sizeof(__name);
	if (FUNC18(FUNC0(inode), __name, &qname.len,
			entry->i.entryName, entry->i.nameLen,
			!FUNC16(inode, entry->i.NSCreator)))
		return 1; /* I'm not sure */

	qname.name = __name;
	qname.hash = FUNC8(qname.name, qname.len);

	if (dentry->d_op && dentry->d_op->d_hash)
		if (dentry->d_op->d_hash(dentry, &qname) != 0)
			goto end_advance;

	newdent = FUNC4(dentry, &qname);

	if (!newdent) {
		newdent = FUNC2(dentry, &qname);
		if (!newdent)
			goto end_advance;
	} else {
		hashed = 1;
		FUNC13((char *) newdent->d_name.name, qname.name,
							newdent->d_name.len);
	}

	if (!newdent->d_inode) {
		entry->opened = 0;
		entry->ino = FUNC10(inode->i_sb, 2);
		newino = FUNC14(inode->i_sb, entry);
		if (newino) {
			newdent->d_op = &ncp_dentry_operations;
			FUNC3(newdent, newino);
			if (!hashed)
				FUNC5(newdent);
		}
	} else
		FUNC17(newdent->d_inode, entry);

	if (newdent->d_inode) {
		ino = newdent->d_inode->i_ino;
		newdent->d_fsdata = (void *) ctl.fpos;
		FUNC15(newdent);
	}

	if (ctl.idx >= NCP_DIRCACHE_SIZE) {
		if (ctl.page) {
			FUNC12(ctl.page);
			FUNC1(ctl.page);
			FUNC21(ctl.page);
			FUNC19(ctl.page);
		}
		ctl.cache = NULL;
		ctl.idx  -= NCP_DIRCACHE_SIZE;
		ctl.ofs  += 1;
		ctl.page  = FUNC9(&inode->i_data, ctl.ofs);
		if (ctl.page)
			ctl.cache = FUNC11(ctl.page);
	}
	if (ctl.cache) {
		ctl.cache->dentry[ctl.idx] = newdent;
		valid = 1;
	}
	FUNC6(newdent);
end_advance:
	if (!valid)
		ctl.valid = 0;
	if (!ctl.filled && (ctl.fpos == filp->f_pos)) {
		if (!ino)
			ino = FUNC7(dentry, &qname);
		if (!ino)
			ino = FUNC10(inode->i_sb, 2);
		ctl.filled = filldir(dirent, qname.name, qname.len,
				     filp->f_pos, ino, DT_UNKNOWN);
		if (!ctl.filled)
			filp->f_pos += 1;
	}
	ctl.fpos += 1;
	ctl.idx  += 1;
	*ctrl = ctl;
	return (ctl.valid || !ctl.filled);
}