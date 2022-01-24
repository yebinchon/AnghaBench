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
struct nfsd4_fs_locations {int locations_count; int /*<<< orphan*/ * locations; } ;
struct svc_export {struct nfsd4_fs_locations ex_fslocs; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char,char*,scalar_t__**,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__**,int*) ; 
 char* FUNC3 (struct svc_rqst*,struct svc_export*,scalar_t__*) ; 
 scalar_t__ nfserr_resource ; 

__attribute__((used)) static __be32 FUNC4(struct svc_rqst *rqstp,
				     struct svc_export *exp,
				     __be32 **pp, int *buflen)
{
	__be32 status;
	int i;
	__be32 *p = *pp;
	struct nfsd4_fs_locations *fslocs = &exp->ex_fslocs;
	char *root = FUNC3(rqstp, exp, &status);

	if (status)
		return status;
	status = FUNC1('/', root, &p, buflen);
	if (status)
		return status;
	if ((*buflen -= 4) < 0)
		return nfserr_resource;
	FUNC0(fslocs->locations_count);
	for (i=0; i<fslocs->locations_count; i++) {
		status = FUNC2(&fslocs->locations[i],
						   &p, buflen);
		if (status)
			return status;
	}
	*pp = p;
	return 0;
}