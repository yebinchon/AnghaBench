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

/* Variables and functions */
 int /*<<< orphan*/  RPC_AUTH_GSS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rsc_cache ; 
 int /*<<< orphan*/  rsi_cache ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svcauthops_gss ; 

int
FUNC4(void)
{
	int rv = FUNC2(RPC_AUTH_GSS, &svcauthops_gss);
	if (rv)
		return rv;
	rv = FUNC0(&rsc_cache);
	if (rv)
		goto out1;
	rv = FUNC0(&rsi_cache);
	if (rv)
		goto out2;
	return 0;
out2:
	FUNC1(&rsc_cache);
out1:
	FUNC3(RPC_AUTH_GSS);
	return rv;
}