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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (unsigned short) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int nfsd_up ; 

__attribute__((used)) static int FUNC6(unsigned short port, int nrservs)
{
	int ret;

	if (nfsd_up)
		return 0;
	/*
	 * Readahead param cache - will no-op if it already exists.
	 * (Note therefore results will be suboptimal if number of
	 * threads is modified after nfsd start.)
	 */
	ret = FUNC4(2*nrservs);
	if (ret)
		return ret;
	ret = FUNC3(port);
	if (ret)
		goto out_racache;
	ret = FUNC1();
	if (ret)
		goto out_racache;
	ret = FUNC2();
	if (ret)
		goto out_lockd;
	nfsd_up = true;
	return 0;
out_lockd:
	FUNC0();
out_racache:
	FUNC5();
	return ret;
}