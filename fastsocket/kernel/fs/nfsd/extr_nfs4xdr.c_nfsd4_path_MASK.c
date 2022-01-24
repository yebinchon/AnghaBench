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
struct svc_rqst {int dummy; } ;
struct svc_fh {TYPE_1__* fh_export; } ;
struct svc_export {char* ex_pathname; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {char* ex_pathname; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_FHSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*,struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_fh*) ; 
 int /*<<< orphan*/  nfserr_notsupp ; 
 size_t FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static char *FUNC6(struct svc_rqst *rqstp, struct svc_export *exp, __be32 *stat)
{
	struct svc_fh tmp_fh;
	char *path = NULL, *rootpath;
	size_t rootlen;

	FUNC2(&tmp_fh, NFS4_FHSIZE);
	*stat = FUNC1(rqstp, &tmp_fh);
	if (*stat)
		return NULL;
	rootpath = tmp_fh.fh_export->ex_pathname;

	path = exp->ex_pathname;

	rootlen = FUNC4(rootpath);
	if (FUNC5(path, rootpath, rootlen)) {
		FUNC0("nfsd: fs_locations failed;"
			"%s is not contained in %s\n", path, rootpath);
		*stat = nfserr_notsupp;
		path = NULL;
		goto out;
	}
	path += rootlen;
out:
	FUNC3(&tmp_fh);
	return path;
}