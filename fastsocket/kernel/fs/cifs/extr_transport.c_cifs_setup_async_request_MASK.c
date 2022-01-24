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
struct smb_rqst {TYPE_1__* rq_iov; } ;
struct smb_hdr {int /*<<< orphan*/  Flags2; } ;
struct mid_q_entry {int /*<<< orphan*/  sequence_number; } ;
struct TCP_Server_Info {int sec_mode; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 struct mid_q_entry* FUNC0 (struct smb_hdr*,struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mid_q_entry*) ; 
 int ENOMEM ; 
 struct mid_q_entry* FUNC2 (int) ; 
 int SECMODE_SIGN_ENABLED ; 
 int SECMODE_SIGN_REQUIRED ; 
 int /*<<< orphan*/  SMBFLG2_SECURITY_SIGNATURE ; 
 int FUNC3 (struct smb_rqst*,struct TCP_Server_Info*,int /*<<< orphan*/ *) ; 

struct mid_q_entry *
FUNC4(struct TCP_Server_Info *server, struct smb_rqst *rqst)
{
	int rc;
	struct smb_hdr *hdr = (struct smb_hdr *)rqst->rq_iov[0].iov_base;
	struct mid_q_entry *mid;

	/* enable signing if server requires it */
	if (server->sec_mode & (SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED))
		hdr->Flags2 |= SMBFLG2_SECURITY_SIGNATURE;

	mid = FUNC0(hdr, server);
	if (mid == NULL)
		return FUNC2(-ENOMEM);

	rc = FUNC3(rqst, server, &mid->sequence_number);
	if (rc) {
		FUNC1(mid);
		return FUNC2(rc);
	}

	return mid;
}