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
struct cifs_tcon {int /*<<< orphan*/  num_hardlinks; int /*<<< orphan*/  ses; } ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_5__ {int Flags2; } ;
struct TYPE_6__ {int BufferFormat; int* OldFileName; void* ByteCount; TYPE_1__ hdr; scalar_t__ ClusterCount; void* Flags; void* SearchAttributes; } ;
typedef  int /*<<< orphan*/  RENAME_RSP ;
typedef  TYPE_2__ NT_RENAME_REQ ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 int ATTR_HIDDEN ; 
 int ATTR_READONLY ; 
 int ATTR_SYSTEM ; 
 int CREATE_HARD_LINK ; 
 int EAGAIN ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int SMBFLG2_UNICODE ; 
 int /*<<< orphan*/  SMB_COM_NT_RENAME ; 
 int FUNC0 (int const,int /*<<< orphan*/ ,struct smb_hdr*,struct smb_hdr*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct nls_table const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,struct cifs_tcon*,void**,void**) ; 
 int /*<<< orphan*/  FUNC8 (int*,char const*,int) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ) ; 

int
FUNC10(const int xid, struct cifs_tcon *tcon,
		   const char *fromName, const char *toName,
		   const struct nls_table *nls_codepage, int remap)
{
	int rc = 0;
	NT_RENAME_REQ *pSMB = NULL;
	RENAME_RSP *pSMBr = NULL;
	int bytes_returned;
	int name_len, name_len2;
	__u16 count;

	FUNC1(1, "In CIFSCreateHardLink");
winCreateHardLinkRetry:

	rc = FUNC7(SMB_COM_NT_RENAME, 4, tcon, (void **) &pSMB,
		      (void **) &pSMBr);
	if (rc)
		return rc;

	pSMB->SearchAttributes =
	    FUNC5(ATTR_READONLY | ATTR_HIDDEN | ATTR_SYSTEM |
			ATTR_DIRECTORY);
	pSMB->Flags = FUNC5(CREATE_HARD_LINK);
	pSMB->ClusterCount = 0;

	pSMB->BufferFormat = 0x04;

	if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
		name_len =
		    FUNC2((__le16 *) pSMB->OldFileName, fromName,
				     PATH_MAX, nls_codepage, remap);
		name_len++;	/* trailing null */
		name_len *= 2;

		/* protocol specifies ASCII buffer format (0x04) for unicode */
		pSMB->OldFileName[name_len] = 0x04;
		pSMB->OldFileName[name_len + 1] = 0x00; /* pad */
		name_len2 =
		    FUNC2((__le16 *)&pSMB->OldFileName[name_len + 2],
				     toName, PATH_MAX, nls_codepage, remap);
		name_len2 += 1 /* trailing null */  + 1 /* Signature word */ ;
		name_len2 *= 2;	/* convert to bytes */
	} else {	/* BB improve the check for buffer overruns BB */
		name_len = FUNC9(fromName, PATH_MAX);
		name_len++;	/* trailing null */
		FUNC8(pSMB->OldFileName, fromName, name_len);
		name_len2 = FUNC9(toName, PATH_MAX);
		name_len2++;	/* trailing null */
		pSMB->OldFileName[name_len] = 0x04;	/* 2nd buffer format */
		FUNC8(&pSMB->OldFileName[name_len + 1], toName, name_len2);
		name_len2++;	/* trailing null */
		name_len2++;	/* signature byte */
	}

	count = 1 /* string type byte */  + name_len + name_len2;
	FUNC6(pSMB, count);
	pSMB->ByteCount = FUNC5(count);

	rc = FUNC0(xid, tcon->ses, (struct smb_hdr *) pSMB,
			 (struct smb_hdr *) pSMBr, &bytes_returned, 0);
	FUNC4(&tcon->num_hardlinks);
	if (rc)
		FUNC1(1, "Send error in hard link (NT rename) = %d", rc);

	FUNC3(pSMB);
	if (rc == -EAGAIN)
		goto winCreateHardLinkRetry;

	return rc;
}