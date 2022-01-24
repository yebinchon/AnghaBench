#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ntlmssp2_name {void* length; void* type; } ;
struct nls_table {int dummy; } ;
struct TYPE_3__ {unsigned int len; unsigned char* response; } ;
struct cifs_ses {TYPE_2__* server; int /*<<< orphan*/  domainName; TYPE_1__ auth_key; } ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int /*<<< orphan*/  hostname; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NTLMSSP_AV_DNS_COMPUTER_NAME ; 
 int NTLMSSP_AV_DNS_DOMAIN_NAME ; 
 int NTLMSSP_AV_NB_COMPUTER_NAME ; 
 int NTLMSSP_AV_NB_DOMAIN_NAME ; 
 int NTLMSSP_AV_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,struct nls_table const*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct cifs_ses *ses, const struct nls_table *nls_cp)
{
	unsigned int dlen;
	unsigned int wlen;
	unsigned int size = 6 * sizeof(struct ntlmssp2_name);
	__le64  curtime;
	char *defdmname = "WORKGROUP";
	unsigned char *blobptr;
	struct ntlmssp2_name *attrptr;

	if (!ses->domainName) {
		ses->domainName = FUNC5(defdmname, GFP_KERNEL);
		if (!ses->domainName)
			return -ENOMEM;
	}

	dlen = FUNC8(ses->domainName);
	wlen = FUNC8(ses->server->hostname);

	/* The length of this blob is a size which is
	 * six times the size of a structure which holds name/size +
	 * two times the unicode length of a domain name +
	 * two times the unicode length of a server name +
	 * size of a timestamp (which is 8 bytes).
	 */
	ses->auth_key.len = size + 2 * (2 * dlen) + 2 * (2 * wlen) + 8;
	ses->auth_key.response = FUNC6(ses->auth_key.len, GFP_KERNEL);
	if (!ses->auth_key.response) {
		ses->auth_key.len = 0;
		FUNC0(1, "Challenge target info allocation failure");
		return -ENOMEM;
	}

	blobptr = ses->auth_key.response;
	attrptr = (struct ntlmssp2_name *) blobptr;

	attrptr->type = FUNC3(NTLMSSP_AV_NB_DOMAIN_NAME);
	attrptr->length = FUNC3(2 * dlen);
	blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
	FUNC2((__le16 *)blobptr, ses->domainName, dlen, nls_cp);

	blobptr += 2 * dlen;
	attrptr = (struct ntlmssp2_name *) blobptr;

	attrptr->type = FUNC3(NTLMSSP_AV_NB_COMPUTER_NAME);
	attrptr->length = FUNC3(2 * wlen);
	blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
	FUNC2((__le16 *)blobptr, ses->server->hostname, wlen, nls_cp);

	blobptr += 2 * wlen;
	attrptr = (struct ntlmssp2_name *) blobptr;

	attrptr->type = FUNC3(NTLMSSP_AV_DNS_DOMAIN_NAME);
	attrptr->length = FUNC3(2 * dlen);
	blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
	FUNC2((__le16 *)blobptr, ses->domainName, dlen, nls_cp);

	blobptr += 2 * dlen;
	attrptr = (struct ntlmssp2_name *) blobptr;

	attrptr->type = FUNC3(NTLMSSP_AV_DNS_COMPUTER_NAME);
	attrptr->length = FUNC3(2 * wlen);
	blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
	FUNC2((__le16 *)blobptr, ses->server->hostname, wlen, nls_cp);

	blobptr += 2 * wlen;
	attrptr = (struct ntlmssp2_name *) blobptr;

	attrptr->type = FUNC3(NTLMSSP_AV_TIMESTAMP);
	attrptr->length = FUNC3(sizeof(__le64));
	blobptr = (unsigned char *)attrptr + sizeof(struct ntlmssp2_name);
	curtime = FUNC4(FUNC1(CURRENT_TIME));
	FUNC7(blobptr, &curtime, sizeof(__le64));

	return 0;
}