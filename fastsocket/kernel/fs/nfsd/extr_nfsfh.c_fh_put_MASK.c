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
struct svc_fh {struct svc_export* fh_export; scalar_t__ fh_post_saved; scalar_t__ fh_pre_saved; struct dentry* fh_dentry; } ;
struct svc_export {int /*<<< orphan*/  h; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_fh*) ; 
 int /*<<< orphan*/  svc_export_cache ; 

void
FUNC4(struct svc_fh *fhp)
{
	struct dentry * dentry = fhp->fh_dentry;
	struct svc_export * exp = fhp->fh_export;
	if (dentry) {
		FUNC3(fhp);
		fhp->fh_dentry = NULL;
		FUNC1(dentry);
#ifdef CONFIG_NFSD_V3
		fhp->fh_pre_saved = 0;
		fhp->fh_post_saved = 0;
#endif
	}
	FUNC2(fhp);
	if (exp) {
		FUNC0(&exp->h, &svc_export_cache);
		fhp->fh_export = NULL;
	}
	return;
}