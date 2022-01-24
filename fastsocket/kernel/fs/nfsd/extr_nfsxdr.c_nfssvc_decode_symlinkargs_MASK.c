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
struct nfsd_symlinkargs {int /*<<< orphan*/  attrs; int /*<<< orphan*/  tlen; int /*<<< orphan*/  tname; int /*<<< orphan*/  flen; int /*<<< orphan*/  fname; int /*<<< orphan*/  ffh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC5(struct svc_rqst *rqstp, __be32 *p,
					struct nfsd_symlinkargs *args)
{
	if (   !(p = FUNC0(p, &args->ffh))
	    || !(p = FUNC1(p, &args->fname, &args->flen))
	    || !(p = FUNC2(p, &args->tname, &args->tlen)))
		return 0;
	p = FUNC3(p, &args->attrs);

	return FUNC4(rqstp, p);
}