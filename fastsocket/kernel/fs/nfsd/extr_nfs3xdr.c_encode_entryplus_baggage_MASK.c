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
struct svc_fh {int dummy; } ;
struct nfsd3_readdirres {int /*<<< orphan*/  rqstp; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS3_FHSIZE ; 
 int FUNC0 (struct nfsd3_readdirres*,struct svc_fh*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,struct svc_fh*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_fh*) ; 
 scalar_t__ xdr_one ; 

__be32 *FUNC5(struct nfsd3_readdirres *cd, __be32 *p, const char *name, int namlen)
{
	struct svc_fh	fh;
	int err;

	FUNC3(&fh, NFS3_FHSIZE);
	err = FUNC0(cd, &fh, name, namlen);
	if (err) {
		*p++ = 0;
		*p++ = 0;
		goto out;
	}
	p = FUNC2(cd->rqstp, p, &fh);
	*p++ = xdr_one;			/* yes, a file handle follows */
	p = FUNC1(p, &fh);
out:
	FUNC4(&fh);
	return p;
}