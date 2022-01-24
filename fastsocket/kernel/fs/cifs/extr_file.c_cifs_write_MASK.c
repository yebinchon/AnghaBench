#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; int /*<<< orphan*/  d_sb; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {scalar_t__ wsize; } ;
struct cifs_io_parms {unsigned int length; scalar_t__ offset; struct cifs_tcon* tcon; int /*<<< orphan*/  pid; int /*<<< orphan*/  netfid; } ;
struct cifsInodeInfo {int dummy; } ;
struct cifsFileInfo {int /*<<< orphan*/  netfid; scalar_t__ invalidHandle; int /*<<< orphan*/  tlink; struct dentry* dentry; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_6__ {scalar_t__ i_size; int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int FUNC0 (int,struct cifs_io_parms*,unsigned int*,struct kvec*,int,int /*<<< orphan*/ ) ; 
 struct cifsInodeInfo* FUNC1 (TYPE_2__*) ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct cifsFileInfo*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cifs_tcon*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct cifsInodeInfo*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 unsigned int FUNC11 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct cifs_tcon* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC15(struct cifsFileInfo *open_file, __u32 pid,
			  const char *write_data, size_t write_size,
			  loff_t *poffset)
{
	int rc = 0;
	unsigned int bytes_written = 0;
	unsigned int total_written;
	struct cifs_sb_info *cifs_sb;
	struct cifs_tcon *pTcon;
	int xid;
	struct dentry *dentry = open_file->dentry;
	struct cifsInodeInfo *cifsi = FUNC1(dentry->d_inode);
	struct cifs_io_parms io_parms;

	cifs_sb = FUNC2(dentry->d_sb);

	FUNC5(1, "write %zd bytes to offset %lld of %s", write_size,
	   *poffset, dentry->d_name.name);

	pTcon = FUNC14(open_file->tlink);

	xid = FUNC4();

	for (total_written = 0; write_size > total_written;
	     total_written += bytes_written) {
		rc = -EAGAIN;
		while (rc == -EAGAIN) {
			struct kvec iov[2];
			unsigned int len;

			if (open_file->invalidHandle) {
				/* we could deadlock if we called
				   filemap_fdatawait from here so tell
				   reopen_file not to flush data to
				   server now */
				rc = FUNC6(open_file, false);
				if (rc != 0)
					break;
			}

			len = FUNC11((size_t)cifs_sb->wsize,
				  write_size - total_written);
			/* iov[0] is reserved for smb header */
			iov[1].iov_base = (char *)write_data + total_written;
			iov[1].iov_len = len;
			io_parms.netfid = open_file->netfid;
			io_parms.pid = pid;
			io_parms.tcon = pTcon;
			io_parms.offset = *poffset;
			io_parms.length = len;
			rc = FUNC0(xid, &io_parms, &bytes_written, iov,
					   1, 0);
		}
		if (rc || (bytes_written == 0)) {
			if (total_written)
				break;
			else {
				FUNC3(xid);
				return rc;
			}
		} else {
			FUNC12(&dentry->d_inode->i_lock);
			FUNC8(cifsi, *poffset, bytes_written);
			FUNC13(&dentry->d_inode->i_lock);
			*poffset += bytes_written;
		}
	}

	FUNC7(pTcon, total_written);

	if (total_written > 0) {
		FUNC12(&dentry->d_inode->i_lock);
		if (*poffset > dentry->d_inode->i_size)
			FUNC9(dentry->d_inode, *poffset);
		FUNC13(&dentry->d_inode->i_lock);
	}
	FUNC10(dentry->d_inode);
	FUNC3(xid);
	return total_written;
}