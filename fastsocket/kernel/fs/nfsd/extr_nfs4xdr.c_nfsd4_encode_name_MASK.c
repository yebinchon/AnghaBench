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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u8 ;
struct svc_rqst {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IDMAP_NAMESZ ; 
 int NFS4_ACL_WHO_NAMED ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __be32
FUNC7(struct svc_rqst *rqstp, int whotype, uid_t id, int group,
			__be32 **p, int *buflen)
{
	int status;

	if (*buflen < (FUNC1(IDMAP_NAMESZ) << 2) + 4)
		return nfserr_resource;
	if (whotype != NFS4_ACL_WHO_NAMED)
		status = FUNC2(whotype, (u8 *)(*p + 1));
	else if (group)
		status = FUNC3(rqstp, id, (u8 *)(*p + 1));
	else
		status = FUNC4(rqstp, id, (u8 *)(*p + 1));
	if (status < 0)
		return FUNC5(status);
	*p = FUNC6(*p, NULL, status);
	*buflen -= (FUNC1(status) << 2) + 4;
	FUNC0(*buflen < 0);
	return 0;
}