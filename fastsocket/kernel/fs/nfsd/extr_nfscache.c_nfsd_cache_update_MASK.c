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
struct TYPE_2__ {struct kvec* head; } ;
struct svc_rqst {int /*<<< orphan*/  rq_secure; TYPE_1__ rq_res; struct svc_cacherep* rq_cacherep; } ;
struct kvec {int iov_len; scalar_t__ iov_base; } ;
struct svc_cacherep {int c_type; int /*<<< orphan*/  c_state; int /*<<< orphan*/  c_secure; struct kvec c_replvec; int /*<<< orphan*/  c_replstat; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RC_DONE ; 
#define  RC_NOCACHE 130 
#define  RC_REPLBUFF 129 
#define  RC_REPLSTAT 128 
 int /*<<< orphan*/  cache_lock ; 
 size_t drc_mem_usage ; 
 scalar_t__ FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_cacherep*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_cacherep*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct svc_rqst *rqstp, int cachetype, __be32 *statp)
{
	struct svc_cacherep *rp = rqstp->rq_cacherep;
	struct kvec	*resv = &rqstp->rq_res.head[0], *cachv;
	int		len;
	size_t		bufsize = 0;

	if (!rp)
		return;

	len = resv->iov_len - ((char*)statp - (char*)resv->iov_base);
	len >>= 2;

	/* Don't cache excessive amounts of data and XDR failures */
	if (!statp || len > (256 >> 2)) {
		FUNC3(rp);
		return;
	}

	switch (cachetype) {
	case RC_REPLSTAT:
		if (len != 1)
			FUNC4("nfsd: RC_REPLSTAT/reply len %d!\n",len);
		rp->c_replstat = *statp;
		break;
	case RC_REPLBUFF:
		cachv = &rp->c_replvec;
		bufsize = len << 2;
		cachv->iov_base = FUNC0(bufsize, GFP_KERNEL);
		if (!cachv->iov_base) {
			FUNC3(rp);
			return;
		}
		cachv->iov_len = bufsize;
		FUNC2(cachv->iov_base, statp, bufsize);
		break;
	case RC_NOCACHE:
		FUNC3(rp);
		return;
	}
	FUNC5(&cache_lock);
	drc_mem_usage += bufsize;
	FUNC1(rp);
	rp->c_secure = rqstp->rq_secure;
	rp->c_type = cachetype;
	rp->c_state = RC_DONE;
	FUNC6(&cache_lock);
	return;
}