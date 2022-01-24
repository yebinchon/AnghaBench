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
typedef  int /*<<< orphan*/  u32 ;
struct svc_rqst {int /*<<< orphan*/  rq_chandle; int /*<<< orphan*/ * rq_gssclient; int /*<<< orphan*/ * rq_client; } ;
struct svc_export {scalar_t__ ex_nflavors; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct svc_export* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_export*) ; 
 struct svc_export* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_export*) ; 

struct svc_export *
FUNC5(struct svc_rqst *rqstp, int fsid_type, u32 *fsidv)
{
	struct svc_export *gssexp, *exp = FUNC0(-ENOENT);

	if (rqstp->rq_client == NULL)
		goto gss;

	/* First try the auth_unix client: */
	exp = FUNC3(rqstp->rq_client, fsid_type, fsidv, &rqstp->rq_chandle);
	if (FUNC2(exp) == -ENOENT)
		goto gss;
	if (FUNC1(exp))
		return exp;
	/* If it has secinfo, assume there are no gss/... clients */
	if (exp->ex_nflavors > 0)
		return exp;
gss:
	/* Otherwise, try falling back on gss client */
	if (rqstp->rq_gssclient == NULL)
		return exp;
	gssexp = FUNC3(rqstp->rq_gssclient, fsid_type, fsidv,
						&rqstp->rq_chandle);
	if (FUNC2(gssexp) == -ENOENT)
		return exp;
	if (!FUNC1(exp))
		FUNC4(exp);
	return gssexp;
}