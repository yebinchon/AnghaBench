#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct smb_hdr {int Flags2; int WordCount; int /*<<< orphan*/  Tid; int /*<<< orphan*/  Uid; int /*<<< orphan*/  Mid; } ;
struct nls_table {int dummy; } ;
struct cifs_tcon {int need_reconnect; int ipc; int /*<<< orphan*/  Flags; int /*<<< orphan*/  nativeFileSystem; int /*<<< orphan*/  treeName; int /*<<< orphan*/  tid; int /*<<< orphan*/  tidStatus; int /*<<< orphan*/  password; } ;
struct cifs_ses {int capabilities; int /*<<< orphan*/  ipc_tid; TYPE_4__* server; int /*<<< orphan*/  Suid; } ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_8__ {int sec_mode; scalar_t__ secType; int /*<<< orphan*/  cryptkey; } ;
struct TYPE_5__ {int /*<<< orphan*/  smb_buf_length; } ;
struct TYPE_7__ {int AndXCommand; unsigned char* Password; void* ByteCount; TYPE_1__ hdr; void* PasswordLength; void* Flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  OptionalSupport; } ;
typedef  TYPE_2__ TCONX_RSP ;
typedef  TYPE_3__ TCONX_REQ ;

/* Variables and functions */
 int CAP_DFS ; 
 int CAP_STATUS32 ; 
 int CAP_UNICODE ; 
 int CIFSSEC_MAY_LANMAN ; 
 int CIFS_AUTH_RESP_SIZE ; 
 int /*<<< orphan*/  CifsGood ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ LANMAN ; 
 int /*<<< orphan*/  MAX_TREE_SIZE ; 
 int SECMODE_PW_ENCRYPT ; 
 int SECMODE_SIGN_ENABLED ; 
 int SECMODE_SIGN_REQUIRED ; 
 int SECMODE_USER ; 
 int SMBFLG2_DFS ; 
 int SMBFLG2_ERR_STATUS ; 
 int SMBFLG2_SECURITY_SIGNATURE ; 
 int SMBFLG2_UNICODE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  SMB_COM_TREE_CONNECT_ANDX ; 
 int FUNC2 (unsigned int,struct cifs_ses*,struct smb_hdr*,struct smb_hdr*,int*,int /*<<< orphan*/ ) ; 
 int TCON_EXTENDED_SECINFO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 struct smb_hdr* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct smb_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int,int,struct nls_table const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,int,struct nls_table const*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 void* FUNC11 (int) ; 
 int FUNC12 (struct smb_hdr*) ; 
 int global_secflags ; 
 int /*<<< orphan*/  FUNC13 (struct smb_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC16 (struct smb_hdr*) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,char const*) ; 
 scalar_t__ FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC20 (unsigned char*,int) ; 

int
FUNC21(unsigned int xid, struct cifs_ses *ses,
	 const char *tree, struct cifs_tcon *tcon,
	 const struct nls_table *nls_codepage)
{
	struct smb_hdr *smb_buffer;
	struct smb_hdr *smb_buffer_response;
	TCONX_REQ *pSMB;
	TCONX_RSP *pSMBr;
	unsigned char *bcc_ptr;
	int rc = 0;
	int length;
	__u16 bytes_left, count;

	if (ses == NULL)
		return -EIO;

	smb_buffer = FUNC6();
	if (smb_buffer == NULL)
		return -ENOMEM;

	smb_buffer_response = smb_buffer;

	FUNC13(smb_buffer, SMB_COM_TREE_CONNECT_ANDX,
			NULL /*no tid */ , 4 /*wct */ );

	smb_buffer->Mid = FUNC0(ses->server);
	smb_buffer->Uid = ses->Suid;
	pSMB = (TCONX_REQ *) smb_buffer;
	pSMBr = (TCONX_RSP *) smb_buffer_response;

	pSMB->AndXCommand = 0xFF;
	pSMB->Flags = FUNC11(TCON_EXTENDED_SECINFO);
	bcc_ptr = &pSMB->Password[0];
	if (!tcon || (ses->server->sec_mode & SECMODE_USER)) {
		pSMB->PasswordLength = FUNC11(1);	/* minimum */
		*bcc_ptr = 0; /* password is null byte */
		bcc_ptr++;              /* skip password */
		/* already aligned so no need to do it below */
	} else {
		pSMB->PasswordLength = FUNC11(CIFS_AUTH_RESP_SIZE);
		/* BB FIXME add code to fail this if NTLMv2 or Kerberos
		   specified as required (when that support is added to
		   the vfs in the future) as only NTLM or the much
		   weaker LANMAN (which we do not send by default) is accepted
		   by Samba (not sure whether other servers allow
		   NTLMv2 password here) */
#ifdef CONFIG_CIFS_WEAK_PW_HASH
		if ((global_secflags & CIFSSEC_MAY_LANMAN) &&
		    (ses->server->secType == LANMAN))
			calc_lanman_hash(tcon->password, ses->server->cryptkey,
					 ses->server->sec_mode &
					    SECMODE_PW_ENCRYPT ? true : false,
					 bcc_ptr);
		else
#endif /* CIFS_WEAK_PW_HASH */
		rc = FUNC1(tcon->password, ses->server->cryptkey,
					bcc_ptr);

		bcc_ptr += CIFS_AUTH_RESP_SIZE;
		if (ses->capabilities & CAP_UNICODE) {
			/* must align unicode strings */
			*bcc_ptr = 0; /* null byte password */
			bcc_ptr++;
		}
	}

	if (ses->server->sec_mode &
			(SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED))
		smb_buffer->Flags2 |= SMBFLG2_SECURITY_SIGNATURE;

	if (ses->capabilities & CAP_STATUS32) {
		smb_buffer->Flags2 |= SMBFLG2_ERR_STATUS;
	}
	if (ses->capabilities & CAP_DFS) {
		smb_buffer->Flags2 |= SMBFLG2_DFS;
	}
	if (ses->capabilities & CAP_UNICODE) {
		smb_buffer->Flags2 |= SMBFLG2_UNICODE;
		length =
		    FUNC9((__le16 *) bcc_ptr, tree,
			6 /* max utf8 char length in bytes */ *
			(/* server len*/ + 256 /* share len */), nls_codepage);
		bcc_ptr += 2 * length;	/* convert num 16 bit words to bytes */
		bcc_ptr += 2;	/* skip trailing null */
	} else {		/* ASCII */
		FUNC17(bcc_ptr, tree);
		bcc_ptr += FUNC18(tree) + 1;
	}
	FUNC17(bcc_ptr, "?????");
	bcc_ptr += FUNC18("?????");
	bcc_ptr += 1;
	count = bcc_ptr - &pSMB->Password[0];
	pSMB->hdr.smb_buf_length = FUNC10(FUNC3(
					pSMB->hdr.smb_buf_length) + count);
	pSMB->ByteCount = FUNC11(count);

	rc = FUNC2(xid, ses, smb_buffer, smb_buffer_response, &length,
			 0);

	/* above now done in SendReceive */
	if ((rc == 0) && (tcon != NULL)) {
		bool is_unicode;

		tcon->tidStatus = CifsGood;
		tcon->need_reconnect = false;
		tcon->tid = smb_buffer_response->Tid;
		bcc_ptr = FUNC16(smb_buffer_response);
		bytes_left = FUNC12(smb_buffer_response);
		length = FUNC20(bcc_ptr, bytes_left - 2);
		if (smb_buffer->Flags2 & SMBFLG2_UNICODE)
			is_unicode = true;
		else
			is_unicode = false;


		/* skip service field (NB: this field is always ASCII) */
		if (length == 3) {
			if ((bcc_ptr[0] == 'I') && (bcc_ptr[1] == 'P') &&
			    (bcc_ptr[2] == 'C')) {
				FUNC4(1, "IPC connection");
				tcon->ipc = 1;
			}
		} else if (length == 2) {
			if ((bcc_ptr[0] == 'A') && (bcc_ptr[1] == ':')) {
				/* the most common case */
				FUNC4(1, "disk share connection");
			}
		}
		bcc_ptr += length + 1;
		bytes_left -= (length + 1);
		FUNC19(tcon->treeName, tree, MAX_TREE_SIZE);

		/* mostly informational -- no need to fail on error here */
		FUNC14(tcon->nativeFileSystem);
		tcon->nativeFileSystem = FUNC8(bcc_ptr,
						      bytes_left, is_unicode,
						      nls_codepage);

		FUNC4(1, "nativeFileSystem=%s", tcon->nativeFileSystem);

		if ((smb_buffer_response->WordCount == 3) ||
			 (smb_buffer_response->WordCount == 7))
			/* field is in same location */
			tcon->Flags = FUNC15(pSMBr->OptionalSupport);
		else
			tcon->Flags = 0;
		FUNC4(1, "Tcon flags: 0x%x ", tcon->Flags);
	} else if ((rc == 0) && tcon == NULL) {
		/* all we need to save for IPC$ connection */
		ses->ipc_tid = smb_buffer_response->Tid;
	}

	FUNC7(smb_buffer);
	return rc;
}