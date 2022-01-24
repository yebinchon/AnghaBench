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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nlm_reboot {TYPE_1__ priv; int /*<<< orphan*/  state; int /*<<< orphan*/  len; int /*<<< orphan*/  mon; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  SM_MAXSTRLEN ; 
 int /*<<< orphan*/  SM_PRIV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(struct svc_rqst *rqstp, __be32 *p, struct nlm_reboot *argp)
{
	if (!(p = FUNC4(p, &argp->mon, &argp->len, SM_MAXSTRLEN)))
		return 0;
	argp->state = FUNC2(*p++);
	FUNC1(&argp->priv.data, p, sizeof(argp->priv.data));
	p += FUNC0(SM_PRIV_SIZE);
	return FUNC3(rqstp, p);
}