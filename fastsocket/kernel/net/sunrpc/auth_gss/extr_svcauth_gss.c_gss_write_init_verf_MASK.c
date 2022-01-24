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
struct svc_rqst {int dummy; } ;
struct rsi {scalar_t__ major_status; int /*<<< orphan*/  out_handle; } ;
struct rsc {int /*<<< orphan*/  h; int /*<<< orphan*/  mechctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_SEQ_WIN ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rsc* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct svc_rqst*) ; 
 int FUNC3 (struct svc_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rsc_cache ; 

__attribute__((used)) static inline int
FUNC4(struct svc_rqst *rqstp, struct rsi *rsip)
{
	struct rsc *rsci;
	int        rc;

	if (rsip->major_status != GSS_S_COMPLETE)
		return FUNC2(rqstp);
	rsci = FUNC1(&rsip->out_handle);
	if (rsci == NULL) {
		rsip->major_status = GSS_S_NO_CONTEXT;
		return FUNC2(rqstp);
	}
	rc = FUNC3(rqstp, rsci->mechctx, GSS_SEQ_WIN);
	FUNC0(&rsci->h, &rsc_cache);
	return rc;
}