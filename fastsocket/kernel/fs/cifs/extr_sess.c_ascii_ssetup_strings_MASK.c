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
struct nls_table {int dummy; } ;
struct cifs_ses {int /*<<< orphan*/ * domainName; int /*<<< orphan*/ * user_name; } ;
struct TYPE_2__ {char* release; } ;

/* Variables and functions */
 char* CIFS_NETWORK_OPSYS ; 
 int MAX_USERNAME_SIZE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(char **pbcc_area, struct cifs_ses *ses,
				 const struct nls_table *nls_cp)
{
	char *bcc_ptr = *pbcc_area;

	/* copy user */
	/* BB what about null user mounts - check that we do this BB */
	/* copy user */
	if (ses->user_name != NULL)
		FUNC3(bcc_ptr, ses->user_name, MAX_USERNAME_SIZE);
	/* else null user mount */

	bcc_ptr += FUNC4(ses->user_name, MAX_USERNAME_SIZE);
	*bcc_ptr = 0;
	bcc_ptr++; /* account for null termination */

	/* copy domain */

	if (ses->domainName != NULL) {
		FUNC3(bcc_ptr, ses->domainName, 256);
		bcc_ptr += FUNC4(ses->domainName, 256);
	} /* else we will send a null domain name
	     so the server will default to its own domain */
	*bcc_ptr = 0;
	bcc_ptr++;

	/* BB check for overflow here */

	FUNC1(bcc_ptr, "Linux version ");
	bcc_ptr += FUNC2("Linux version ");
	FUNC1(bcc_ptr, FUNC0()->release);
	bcc_ptr += FUNC2(FUNC0()->release) + 1;

	FUNC1(bcc_ptr, CIFS_NETWORK_OPSYS);
	bcc_ptr += FUNC2(CIFS_NETWORK_OPSYS) + 1;

	*pbcc_area = bcc_ptr;
}