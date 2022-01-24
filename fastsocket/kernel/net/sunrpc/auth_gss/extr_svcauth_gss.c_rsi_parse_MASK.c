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
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ expiry_time; scalar_t__ flags; } ;
struct rsi {TYPE_1__ h; int /*<<< orphan*/  out_token; int /*<<< orphan*/  out_handle; void* minor_status; void* major_status; int /*<<< orphan*/  in_token; int /*<<< orphan*/  in_handle; } ;
struct cache_detail {int dummy; } ;
typedef  int /*<<< orphan*/  rsii ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (struct rsi*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char**,char*,int) ; 
 int /*<<< orphan*/  rsi_cache ; 
 int /*<<< orphan*/  FUNC5 (struct rsi*) ; 
 struct rsi* FUNC6 (struct rsi*) ; 
 struct rsi* FUNC7 (struct rsi*,struct rsi*) ; 
 void* FUNC8 (char*,char**,int) ; 

__attribute__((used)) static int FUNC9(struct cache_detail *cd,
		    char *mesg, int mlen)
{
	/* context token expiry major minor context token */
	char *buf = mesg;
	char *ep;
	int len;
	struct rsi rsii, *rsip = NULL;
	time_t expiry;
	int status = -EINVAL;

	FUNC3(&rsii, 0, sizeof(rsii));
	/* handle */
	len = FUNC4(&mesg, buf, mlen);
	if (len < 0)
		goto out;
	status = -ENOMEM;
	if (FUNC1(&rsii.in_handle, buf, len))
		goto out;

	/* token */
	len = FUNC4(&mesg, buf, mlen);
	status = -EINVAL;
	if (len < 0)
		goto out;
	status = -ENOMEM;
	if (FUNC1(&rsii.in_token, buf, len))
		goto out;

	rsip = FUNC6(&rsii);
	if (!rsip)
		goto out;

	rsii.h.flags = 0;
	/* expiry */
	expiry = FUNC2(&mesg);
	status = -EINVAL;
	if (expiry == 0)
		goto out;

	/* major/minor */
	len = FUNC4(&mesg, buf, mlen);
	if (len <= 0)
		goto out;
	rsii.major_status = FUNC8(buf, &ep, 10);
	if (*ep)
		goto out;
	len = FUNC4(&mesg, buf, mlen);
	if (len <= 0)
		goto out;
	rsii.minor_status = FUNC8(buf, &ep, 10);
	if (*ep)
		goto out;

	/* out_handle */
	len = FUNC4(&mesg, buf, mlen);
	if (len < 0)
		goto out;
	status = -ENOMEM;
	if (FUNC1(&rsii.out_handle, buf, len))
		goto out;

	/* out_token */
	len = FUNC4(&mesg, buf, mlen);
	status = -EINVAL;
	if (len < 0)
		goto out;
	status = -ENOMEM;
	if (FUNC1(&rsii.out_token, buf, len))
		goto out;
	rsii.h.expiry_time = expiry;
	rsip = FUNC7(&rsii, rsip);
	status = 0;
out:
	FUNC5(&rsii);
	if (rsip)
		FUNC0(&rsip->h, &rsi_cache);
	else
		status = -ENOMEM;
	return status;
}