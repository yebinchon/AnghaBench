#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int __le32 ;
struct TYPE_9__ {int /*<<< orphan*/  file_handle; int /*<<< orphan*/  volNumber; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {TYPE_1__ m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct inode*,struct dentry*,char const*) ; 
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_6__* FUNC1 (struct inode*) ; 
 unsigned int NCP_MAX_SYMLINK_SIZE ; 
 int NCP_MOUNT_SYMLINKS ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int NCP_SYMLINK_MAGIC0 ; 
 int NCP_SYMLINK_MAGIC1 ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int aHIDDEN ; 
 int aSHARED ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*,struct dentry*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (TYPE_2__*,char*,int*,char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int*) ; 
 int FUNC12 (char const*) ; 

int FUNC13(struct inode *dir, struct dentry *dentry, const char *symname) {
	struct inode *inode;
	char *rawlink;
	int length, err, i, outlen;
	int kludge;
	int mode;
	__le32 attr;
	unsigned int hdr;

	FUNC0("ncp_symlink(dir=%p,dentry=%p,symname=%s)\n",dir,dentry,symname);

	if (FUNC8(FUNC2(dir), FUNC1(dir)->volNumber))
		kludge = 0;
	else
#ifdef CONFIG_NCPFS_EXTRAS
	if (NCP_SERVER(dir)->m.flags & NCP_MOUNT_SYMLINKS)
		kludge = 1;
	else
#endif
	/* EPERM is returned by VFS if symlink procedure does not exist */
		return -EPERM;
  
	rawlink = FUNC4(NCP_MAX_SYMLINK_SIZE, GFP_KERNEL);
	if (!rawlink)
		return -ENOMEM;

	if (kludge) {
		mode = 0;
		attr = aSHARED | aHIDDEN;
		((__le32 *)rawlink)[0]=NCP_SYMLINK_MAGIC0;
		((__le32 *)rawlink)[1]=NCP_SYMLINK_MAGIC1;
		hdr = 8;
	} else {
		mode = S_IFLNK | S_IRWXUGO;
		attr = 0;
		hdr = 0;
	}			

	length = FUNC12(symname);
	/* map to/from server charset, do not touch upper/lower case as
	   symlink can point out of ncp filesystem */
	outlen = NCP_MAX_SYMLINK_SIZE - hdr;
	err = FUNC7(FUNC2(dir), rawlink + hdr, &outlen, symname, length, 0);
	if (err)
		goto failfree;

	outlen += hdr;

	err = -EIO;
	if (FUNC5(dir,dentry,mode,0,attr)) {
		goto failfree;
	}

	inode=dentry->d_inode;

	if (FUNC10(inode, O_WRONLY))
		goto failfree;

	if (FUNC11(FUNC2(inode), FUNC1(inode)->file_handle, 
			     0, outlen, rawlink, &i) || i!=outlen) {
		goto fail;
	}

	FUNC6(inode);
	FUNC9(inode);
	FUNC3(rawlink);
	return 0;
fail:;
	FUNC6(inode);
	FUNC9(inode);
failfree:;
	FUNC3(rawlink);
	return err;
}