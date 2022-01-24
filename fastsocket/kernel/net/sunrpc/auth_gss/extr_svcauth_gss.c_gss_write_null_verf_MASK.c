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
struct TYPE_3__ {TYPE_2__* head; } ;
struct svc_rqst {TYPE_1__ rq_res; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int iov_len; int /*<<< orphan*/ * iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_AUTH_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct svc_rqst *rqstp)
{
	__be32     *p;

	FUNC0(rqstp->rq_res.head, RPC_AUTH_NULL);
	p = rqstp->rq_res.head->iov_base + rqstp->rq_res.head->iov_len;
	/* don't really need to check if head->iov_len > PAGE_SIZE ... */
	*p++ = 0;
	if (!FUNC1(rqstp, p))
		return -1;
	return 0;
}