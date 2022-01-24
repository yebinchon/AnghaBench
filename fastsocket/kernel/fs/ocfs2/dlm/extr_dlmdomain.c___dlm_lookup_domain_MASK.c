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
struct dlm_ctxt {int dummy; } ;

/* Variables and functions */
 struct dlm_ctxt* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static struct dlm_ctxt * FUNC3(const char *domain)
{
	FUNC1(&dlm_domain_lock);

	return FUNC0(domain, FUNC2(domain));
}