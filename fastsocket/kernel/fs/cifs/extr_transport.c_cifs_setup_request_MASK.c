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
struct smb_hdr {int dummy; } ;
struct mid_q_entry {int /*<<< orphan*/  sequence_number; } ;
struct cifs_ses {int /*<<< orphan*/  server; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 struct mid_q_entry* FUNC0 (int) ; 
 int FUNC1 (struct cifs_ses*,struct smb_hdr*,struct mid_q_entry**) ; 
 int FUNC2 (struct smb_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mid_q_entry*) ; 

struct mid_q_entry *
FUNC4(struct cifs_ses *ses, struct smb_rqst *rqst)
{
	int rc;
	struct smb_hdr *hdr = (struct smb_hdr *)rqst->rq_iov[0].iov_base;
	struct mid_q_entry *mid;

	rc = FUNC1(ses, hdr, &mid);
	if (rc)
		return FUNC0(rc);
	rc = FUNC2(rqst, ses->server, &mid->sequence_number);
	if (rc) {
		FUNC3(mid);
		return FUNC0(rc);
	}
	return mid;
}