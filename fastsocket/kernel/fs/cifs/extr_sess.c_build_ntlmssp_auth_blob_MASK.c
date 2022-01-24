#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u16 ;
struct nls_table {int dummy; } ;
struct TYPE_15__ {int response; int len; } ;
struct cifs_ses {TYPE_8__* ntlmssp; int /*<<< orphan*/ * user_name; int /*<<< orphan*/ * domainName; TYPE_4__ auth_key; TYPE_1__* server; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_20__ {void* MaximumLength; void* Length; void* BufferOffset; } ;
struct TYPE_19__ {int server_flags; int ciphertext; } ;
struct TYPE_18__ {scalar_t__ MaximumLength; scalar_t__ Length; void* BufferOffset; } ;
struct TYPE_17__ {void* MaximumLength; void* Length; void* BufferOffset; } ;
struct TYPE_16__ {void* MaximumLength; void* Length; void* BufferOffset; } ;
struct TYPE_14__ {void* MaximumLength; void* Length; void* BufferOffset; } ;
struct TYPE_13__ {scalar_t__ MaximumLength; scalar_t__ Length; void* BufferOffset; } ;
struct TYPE_12__ {int sec_mode; int /*<<< orphan*/  session_estab; } ;
struct TYPE_11__ {unsigned char* Signature; TYPE_9__ SessionKey; TYPE_7__ WorkstationName; TYPE_6__ UserName; TYPE_5__ DomainName; TYPE_3__ NtChallengeResponse; TYPE_2__ LmChallengeResponse; void* NegotiateFlags; int /*<<< orphan*/  MessageType; } ;
typedef  TYPE_10__ AUTHENTICATE_MESSAGE ;

/* Variables and functions */
 int CIFS_CPHTXT_SIZE ; 
 int CIFS_SESS_KEY_SIZE ; 
 int /*<<< orphan*/  MAX_USERNAME_SIZE ; 
 int NTLMSSP_NEGOTIATE_128 ; 
 int NTLMSSP_NEGOTIATE_56 ; 
 int NTLMSSP_NEGOTIATE_EXTENDED_SEC ; 
 int NTLMSSP_NEGOTIATE_KEY_XCH ; 
 int NTLMSSP_NEGOTIATE_NTLM ; 
 int NTLMSSP_NEGOTIATE_SIGN ; 
 int NTLMSSP_NEGOTIATE_TARGET_INFO ; 
 int NTLMSSP_NEGOTIATE_UNICODE ; 
 int NTLMSSP_REQUEST_TARGET ; 
 int NTLMSSP_SIGNATURE ; 
 int /*<<< orphan*/  NtLmAuthenticate ; 
 int SECMODE_SIGN_ENABLED ; 
 int SECMODE_SIGN_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cifs_ses*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nls_table const*) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int) ; 
 int FUNC6 (struct cifs_ses*,struct nls_table const*) ; 

__attribute__((used)) static int FUNC7(unsigned char *pbuffer,
					u16 *buflen,
				   struct cifs_ses *ses,
				   const struct nls_table *nls_cp)
{
	int rc;
	AUTHENTICATE_MESSAGE *sec_blob = (AUTHENTICATE_MESSAGE *)pbuffer;
	__u32 flags;
	unsigned char *tmp;

	FUNC5(sec_blob->Signature, NTLMSSP_SIGNATURE, 8);
	sec_blob->MessageType = NtLmAuthenticate;

	flags = NTLMSSP_NEGOTIATE_56 |
		NTLMSSP_REQUEST_TARGET | NTLMSSP_NEGOTIATE_TARGET_INFO |
		NTLMSSP_NEGOTIATE_128 | NTLMSSP_NEGOTIATE_UNICODE |
		NTLMSSP_NEGOTIATE_NTLM | NTLMSSP_NEGOTIATE_EXTENDED_SEC;
	if (ses->server->sec_mode &
	    (SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED)) {
		flags |= NTLMSSP_NEGOTIATE_SIGN;
		if (!ses->server->session_estab)
			flags |= NTLMSSP_NEGOTIATE_KEY_XCH;
	}

	tmp = pbuffer + sizeof(AUTHENTICATE_MESSAGE);
	sec_blob->NegotiateFlags = FUNC4(flags);

	sec_blob->LmChallengeResponse.BufferOffset =
				FUNC4(sizeof(AUTHENTICATE_MESSAGE));
	sec_blob->LmChallengeResponse.Length = 0;
	sec_blob->LmChallengeResponse.MaximumLength = 0;

	sec_blob->NtChallengeResponse.BufferOffset = FUNC4(tmp - pbuffer);
	rc = FUNC6(ses, nls_cp);
	if (rc) {
		FUNC0(1, "Error %d during NTLMSSP authentication", rc);
		goto setup_ntlmv2_ret;
	}
	FUNC5(tmp, ses->auth_key.response + CIFS_SESS_KEY_SIZE,
			ses->auth_key.len - CIFS_SESS_KEY_SIZE);
	tmp += ses->auth_key.len - CIFS_SESS_KEY_SIZE;

	sec_blob->NtChallengeResponse.Length =
			FUNC3(ses->auth_key.len - CIFS_SESS_KEY_SIZE);
	sec_blob->NtChallengeResponse.MaximumLength =
			FUNC3(ses->auth_key.len - CIFS_SESS_KEY_SIZE);

	if (ses->domainName == NULL) {
		sec_blob->DomainName.BufferOffset = FUNC4(tmp - pbuffer);
		sec_blob->DomainName.Length = 0;
		sec_blob->DomainName.MaximumLength = 0;
		tmp += 2;
	} else {
		int len;
		len = FUNC2((__le16 *)tmp, ses->domainName,
				    MAX_USERNAME_SIZE, nls_cp);
		len *= 2; /* unicode is 2 bytes each */
		sec_blob->DomainName.BufferOffset = FUNC4(tmp - pbuffer);
		sec_blob->DomainName.Length = FUNC3(len);
		sec_blob->DomainName.MaximumLength = FUNC3(len);
		tmp += len;
	}

	if (ses->user_name == NULL) {
		sec_blob->UserName.BufferOffset = FUNC4(tmp - pbuffer);
		sec_blob->UserName.Length = 0;
		sec_blob->UserName.MaximumLength = 0;
		tmp += 2;
	} else {
		int len;
		len = FUNC2((__le16 *)tmp, ses->user_name,
				    MAX_USERNAME_SIZE, nls_cp);
		len *= 2; /* unicode is 2 bytes each */
		sec_blob->UserName.BufferOffset = FUNC4(tmp - pbuffer);
		sec_blob->UserName.Length = FUNC3(len);
		sec_blob->UserName.MaximumLength = FUNC3(len);
		tmp += len;
	}

	sec_blob->WorkstationName.BufferOffset = FUNC4(tmp - pbuffer);
	sec_blob->WorkstationName.Length = 0;
	sec_blob->WorkstationName.MaximumLength = 0;
	tmp += 2;

	if (((ses->ntlmssp->server_flags & NTLMSSP_NEGOTIATE_KEY_XCH) ||
		(ses->ntlmssp->server_flags & NTLMSSP_NEGOTIATE_EXTENDED_SEC))
			&& !FUNC1(ses)) {
		FUNC5(tmp, ses->ntlmssp->ciphertext, CIFS_CPHTXT_SIZE);
		sec_blob->SessionKey.BufferOffset = FUNC4(tmp - pbuffer);
		sec_blob->SessionKey.Length = FUNC3(CIFS_CPHTXT_SIZE);
		sec_blob->SessionKey.MaximumLength =
				FUNC3(CIFS_CPHTXT_SIZE);
		tmp += CIFS_CPHTXT_SIZE;
	} else {
		sec_blob->SessionKey.BufferOffset = FUNC4(tmp - pbuffer);
		sec_blob->SessionKey.Length = 0;
		sec_blob->SessionKey.MaximumLength = 0;
	}

setup_ntlmv2_ret:
	*buflen = tmp - pbuffer;
	return rc;
}