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
struct cifs_sid {int num_subauth; int /*<<< orphan*/ * sub_auth; int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct cifs_sid*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cifs_sid *psid, char *end_of_acl)
{
	/* BB need to add parm so we can store the SID BB */

	/* validate that we do not go past end of ACL - sid must be at least 8
	   bytes long (assuming no sub-auths - e.g. the null SID */
	if (end_of_acl < (char *)psid + 8) {
		FUNC0(1, "ACL too small to parse SID %p", psid);
		return -EINVAL;
	}

#ifdef CONFIG_CIFS_DEBUG2
	if (psid->num_subauth) {
		int i;
		cFYI(1, "SID revision %d num_auth %d",
			psid->revision, psid->num_subauth);

		for (i = 0; i < psid->num_subauth; i++) {
			cFYI(1, "SID sub_auth[%d]: 0x%x ", i,
				le32_to_cpu(psid->sub_auth[i]));
		}

		/* BB add length check to make sure that we do not have huge
			num auths and therefore go off the end */
		cFYI(1, "RID 0x%x",
			le32_to_cpu(psid->sub_auth[psid->num_subauth-1]));
	}
#endif

	return 0;
}