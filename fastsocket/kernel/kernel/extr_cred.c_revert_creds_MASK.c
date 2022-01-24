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
struct cred {int /*<<< orphan*/  usage; } ;
struct TYPE_2__ {struct cred* cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cred const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC4 (struct cred*,struct cred const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 

void FUNC7(const struct cred *old)
{
	const struct cred *override = current->cred;

	FUNC2("revert_creds(%p{%d,%d})", old,
	       FUNC1(&old->usage),
	       FUNC5(old));

	FUNC6(old);
	FUNC6(override);
	FUNC0(old, 1);
	FUNC4(current->cred, old);
	FUNC0(override, -1);
	FUNC3(override);
}