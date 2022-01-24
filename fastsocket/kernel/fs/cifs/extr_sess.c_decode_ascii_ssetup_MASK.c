#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nls_table {int dummy; } ;
struct cifs_ses {void* serverNOS; int /*<<< orphan*/  flags; void* serverOS; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_SES_OS2 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,int) ; 
 int FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(char **pbcc_area, __u16 bleft,
			       struct cifs_ses *ses,
			       const struct nls_table *nls_cp)
{
	int rc = 0;
	int len;
	char *bcc_ptr = *pbcc_area;

	FUNC0(1, "decode sessetup ascii. bleft %d", bleft);

	len = FUNC5(bcc_ptr, bleft);
	if (len >= bleft)
		return rc;

	FUNC1(ses->serverOS);

	ses->serverOS = FUNC2(len + 1, GFP_KERNEL);
	if (ses->serverOS)
		FUNC4(ses->serverOS, bcc_ptr, len);
	if (FUNC3(ses->serverOS, "OS/2", 4) == 0) {
			FUNC0(1, "OS/2 server");
			ses->flags |= CIFS_SES_OS2;
	}

	bcc_ptr += len + 1;
	bleft -= len + 1;

	len = FUNC5(bcc_ptr, bleft);
	if (len >= bleft)
		return rc;

	FUNC1(ses->serverNOS);

	ses->serverNOS = FUNC2(len + 1, GFP_KERNEL);
	if (ses->serverNOS)
		FUNC4(ses->serverNOS, bcc_ptr, len);

	bcc_ptr += len + 1;
	bleft -= len + 1;

	len = FUNC5(bcc_ptr, bleft);
	if (len > bleft)
		return rc;

	/* No domain field in LANMAN case. Domain is
	   returned by old servers in the SMB negprot response */
	/* BB For newer servers which do not support Unicode,
	   but thus do return domain here we could add parsing
	   for it later, but it is not very important */
	FUNC0(1, "ascii: bytes left %d", bleft);

	return rc;
}