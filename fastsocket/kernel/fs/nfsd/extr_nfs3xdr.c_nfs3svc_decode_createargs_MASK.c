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
struct nfsd3_createargs {int /*<<< orphan*/ * verf; int /*<<< orphan*/  attrs; int /*<<< orphan*/  createmode; int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
#define  NFS3_CREATE_EXCLUSIVE 130 
#define  NFS3_CREATE_GUARDED 129 
#define  NFS3_CREATE_UNCHECKED 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC5(struct svc_rqst *rqstp, __be32 *p,
					struct nfsd3_createargs *args)
{
	if (!(p = FUNC0(p, &args->fh))
	 || !(p = FUNC1(p, &args->name, &args->len)))
		return 0;

	switch (args->createmode = FUNC3(*p++)) {
	case NFS3_CREATE_UNCHECKED:
	case NFS3_CREATE_GUARDED:
		p = FUNC2(p, &args->attrs);
		break;
	case NFS3_CREATE_EXCLUSIVE:
		args->verf = p;
		p += 2;
		break;
	default:
		return 0;
	}

	return FUNC4(rqstp, p);
}