#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {int dummy; } ;
struct TYPE_2__ {char* ntwrk_buf_start; scalar_t__ smallBuf; int /*<<< orphan*/  endOfSearch; } ;
struct cifsFileInfo {int invalidHandle; int /*<<< orphan*/  tlink; TYPE_1__ srch_inf; int /*<<< orphan*/  netfid; } ;

/* Variables and functions */
 int FUNC0 (int,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  cifs_file_list_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct cifsFileInfo*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct cifs_tcon* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct inode *inode, struct file *file)
{
	int rc = 0;
	int xid;
	struct cifsFileInfo *pCFileStruct = file->private_data;
	char *ptmp;

	FUNC3(1, "Closedir inode = 0x%p", inode);

	xid = FUNC2();

	if (pCFileStruct) {
		struct cifs_tcon *pTcon = FUNC10(pCFileStruct->tlink);

		FUNC3(1, "Freeing private data in close dir");
		FUNC8(&cifs_file_list_lock);
		if (!pCFileStruct->srch_inf.endOfSearch &&
		    !pCFileStruct->invalidHandle) {
			pCFileStruct->invalidHandle = true;
			FUNC9(&cifs_file_list_lock);
			rc = FUNC0(xid, pTcon, pCFileStruct->netfid);
			FUNC3(1, "Closing uncompleted readdir with rc %d",
				 rc);
			/* not much we can do if it fails anyway, ignore rc */
			rc = 0;
		} else
			FUNC9(&cifs_file_list_lock);
		ptmp = pCFileStruct->srch_inf.ntwrk_buf_start;
		if (ptmp) {
			FUNC3(1, "closedir free smb buf in srch struct");
			pCFileStruct->srch_inf.ntwrk_buf_start = NULL;
			if (pCFileStruct->srch_inf.smallBuf)
				FUNC6(ptmp);
			else
				FUNC4(ptmp);
		}
		FUNC5(pCFileStruct->tlink);
		FUNC7(file->private_data);
		file->private_data = NULL;
	}
	/* BB can we lock the filestruct while this is going on? */
	FUNC1(xid);
	return rc;
}