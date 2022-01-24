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
struct cifs_tcon {int /*<<< orphan*/  num_fclose; int /*<<< orphan*/  ses; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {scalar_t__ ByteCount; int /*<<< orphan*/  FileID; } ;
typedef  TYPE_1__ FINDCLOSE_REQ ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  SMB_COM_FIND_CLOSE2 ; 
 int FUNC0 (int const,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,struct cifs_tcon*,void**) ; 

int
FUNC5(const int xid, struct cifs_tcon *tcon,
	      const __u16 searchHandle)
{
	int rc = 0;
	FINDCLOSE_REQ *pSMB = NULL;

	FUNC2(1, "In CIFSSMBFindClose");
	rc = FUNC4(SMB_COM_FIND_CLOSE2, 1, tcon, (void **)&pSMB);

	/* no sense returning error if session restarted
		as file handle has been closed */
	if (rc == -EAGAIN)
		return 0;
	if (rc)
		return rc;

	pSMB->FileID = searchHandle;
	pSMB->ByteCount = 0;
	rc = FUNC0(xid, tcon->ses, (char *) pSMB, 0);
	if (rc)
		FUNC1(1, "Send error in FindClose = %d", rc);

	FUNC3(&tcon->num_fclose);

	/* Since session is dead, search handle closed on server already */
	if (rc == -EAGAIN)
		rc = 0;

	return rc;
}