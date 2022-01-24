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
struct ip_vs_service {int /*<<< orphan*/  usecnt; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_service*) ; 
 int /*<<< orphan*/  __ip_vs_svc_lock ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ip_vs_service *svc)
{
	if (svc == NULL)
		return -EEXIST;

	/*
	 * Unhash it from the service table
	 */
	FUNC4(&__ip_vs_svc_lock);

	FUNC3(svc);

	/*
	 * Wait until all the svc users go away.
	 */
	FUNC0(FUNC2(&svc->usecnt) > 1);

	FUNC1(svc);

	FUNC5(&__ip_vs_svc_lock);

	return 0;
}