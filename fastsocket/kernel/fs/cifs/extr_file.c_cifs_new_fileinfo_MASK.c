#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcon_link {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {int f_mode; struct cifsFileInfo* private_data; int /*<<< orphan*/  f_flags; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
struct cifsInodeInfo {int /*<<< orphan*/  openFileList; } ;
struct cifsFileInfo {int count; int invalidHandle; int /*<<< orphan*/  flist; int /*<<< orphan*/  tlist; int /*<<< orphan*/  oplock_break; int /*<<< orphan*/  llist; int /*<<< orphan*/  lock_mutex; int /*<<< orphan*/  fh_mutex; int /*<<< orphan*/  tlink; int /*<<< orphan*/  f_flags; int /*<<< orphan*/  dentry; int /*<<< orphan*/  uid; int /*<<< orphan*/  pid; int /*<<< orphan*/  netfid; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_6__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_5__ {int /*<<< orphan*/  openFileList; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cifs_file_list_lock ; 
 int /*<<< orphan*/  FUNC2 (struct tcon_link*) ; 
 int /*<<< orphan*/  cifs_oplock_break_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cifsInodeInfo*,int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct cifsFileInfo* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (struct tcon_link*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct cifsFileInfo *
FUNC15(__u16 fileHandle, struct file *file,
		  struct tcon_link *tlink, __u32 oplock)
{
	struct dentry *dentry = file->f_path.dentry;
	struct inode *inode = dentry->d_inode;
	struct cifsInodeInfo *pCifsInode = FUNC0(inode);
	struct cifsFileInfo *pCifsFile;

	pCifsFile = FUNC7(sizeof(struct cifsFileInfo), GFP_KERNEL);
	if (pCifsFile == NULL)
		return pCifsFile;

	pCifsFile->count = 1;
	pCifsFile->netfid = fileHandle;
	pCifsFile->pid = current->tgid;
	pCifsFile->uid = FUNC5();
	pCifsFile->dentry = FUNC6(dentry);
	pCifsFile->f_flags = file->f_flags;
	pCifsFile->invalidHandle = false;
	pCifsFile->tlink = FUNC2(tlink);
	FUNC10(&pCifsFile->fh_mutex);
	FUNC10(&pCifsFile->lock_mutex);
	FUNC1(&pCifsFile->llist);
	FUNC14(&pCifsFile->oplock_break, &cifs_oplock_break_ops);

	FUNC3(inode->i_sb);

	FUNC11(&cifs_file_list_lock);
	FUNC8(&pCifsFile->tlist, &(FUNC13(tlink)->openFileList));
	/* if readable file instance put first in list*/
	if (file->f_mode & FMODE_READ)
		FUNC8(&pCifsFile->flist, &pCifsInode->openFileList);
	else
		FUNC9(&pCifsFile->flist, &pCifsInode->openFileList);
	FUNC12(&cifs_file_list_lock);

	FUNC4(pCifsInode, oplock);

	file->private_data = pCifsFile;
	return pCifsFile;
}