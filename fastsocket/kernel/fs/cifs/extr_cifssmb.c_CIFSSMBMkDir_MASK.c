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
struct smb_hdr {int dummy; } ;
struct nls_table {int dummy; } ;
struct cifs_tcon {int /*<<< orphan*/  num_mkdirs; int /*<<< orphan*/  ses; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_5__ {int Flags2; } ;
struct TYPE_6__ {int BufferFormat; int /*<<< orphan*/  ByteCount; scalar_t__ DirName; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  CREATE_DIRECTORY_RSP ;
typedef  TYPE_2__ CREATE_DIRECTORY_REQ ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int SMBFLG2_UNICODE ; 
 int /*<<< orphan*/  SMB_COM_CREATE_DIRECTORY ; 
 int FUNC0 (int const,int /*<<< orphan*/ ,struct smb_hdr*,struct smb_hdr*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct nls_table const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cifs_tcon*,void**,void**) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char const*,int) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ) ; 

int
FUNC10(const int xid, struct cifs_tcon *tcon,
	     const char *name, const struct nls_table *nls_codepage, int remap)
{
	int rc = 0;
	CREATE_DIRECTORY_REQ *pSMB = NULL;
	CREATE_DIRECTORY_RSP *pSMBr = NULL;
	int bytes_returned;
	int name_len;

	FUNC1(1, "In CIFSSMBMkDir");
MkDirRetry:
	rc = FUNC7(SMB_COM_CREATE_DIRECTORY, 0, tcon, (void **) &pSMB,
		      (void **) &pSMBr);
	if (rc)
		return rc;

	if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
		name_len = FUNC2((__le16 *) pSMB->DirName, name,
					    PATH_MAX, nls_codepage, remap);
		name_len++;	/* trailing null */
		name_len *= 2;
	} else {		/* BB improve check for buffer overruns BB */
		name_len = FUNC9(name, PATH_MAX);
		name_len++;	/* trailing null */
		FUNC8(pSMB->DirName, name, name_len);
	}

	pSMB->BufferFormat = 0x04;
	FUNC6(pSMB, name_len + 1);
	pSMB->ByteCount = FUNC5(name_len + 1);
	rc = FUNC0(xid, tcon->ses, (struct smb_hdr *) pSMB,
			 (struct smb_hdr *) pSMBr, &bytes_returned, 0);
	FUNC4(&tcon->num_mkdirs);
	if (rc)
		FUNC1(1, "Error in Mkdir = %d", rc);

	FUNC3(pSMB);
	if (rc == -EAGAIN)
		goto MkDirRetry;
	return rc;
}