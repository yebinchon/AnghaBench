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
 int /*<<< orphan*/  FUNC2 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct cred const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cred*,struct cred const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 

const struct cred *FUNC7(const struct cred *new)
{
	const struct cred *old = current->cred;

	FUNC3("override_creds(%p{%d,%d})", new,
	       FUNC1(&new->usage),
	       FUNC5(new));

	FUNC6(old);
	FUNC6(new);
	FUNC2(new);
	FUNC0(new, 1);
	FUNC4(current->cred, new);
	FUNC0(old, -1);

	FUNC3("override_creds() = %p{%d,%d}", old,
	       FUNC1(&old->usage),
	       FUNC5(old));
	return old;
}