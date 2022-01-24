#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mtime; } ;
struct TYPE_5__ {TYPE_1__* fh_dentry; } ;
struct nfsd3_attrstat {scalar_t__ status; TYPE_3__ stat; TYPE_2__ fh; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct svc_rqst*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct svc_rqst *rqstp, __be32 *p,
					struct nfsd3_attrstat *resp)
{
	if (resp->status == 0) {
		FUNC1(resp->fh.fh_dentry->d_inode,
				&resp->stat.mtime);
		p = FUNC0(rqstp, p, &resp->fh, &resp->stat);
	}
	return FUNC2(rqstp, p);
}