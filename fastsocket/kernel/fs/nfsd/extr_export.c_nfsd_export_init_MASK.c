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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  svc_expkey_cache ; 
 int /*<<< orphan*/  svc_export_cache ; 

int
FUNC3(void)
{
	int rv;
	FUNC2("nfsd: initializing export module.\n");

	rv = FUNC0(&svc_export_cache);
	if (rv)
		return rv;
	rv = FUNC0(&svc_expkey_cache);
	if (rv)
		FUNC1(&svc_export_cache);
	return rv;

}