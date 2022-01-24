#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  fl_type; } ;
struct TYPE_7__ {TYPE_1__ fl; } ;
struct TYPE_6__ {TYPE_4__ lock; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_2__ nlm_args ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct svc_rqst *rqstp, __be32 *p, nlm_args *argp)
{
	if (!(p = FUNC0(p, &argp->cookie))
	 || !(p = FUNC1(p, &argp->lock)))
		return 0;
	argp->lock.fl.fl_type = F_UNLCK;
	return FUNC2(rqstp, p);
}