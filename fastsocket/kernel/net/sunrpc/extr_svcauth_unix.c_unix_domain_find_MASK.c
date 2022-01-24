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
struct auth_domain {int /*<<< orphan*/ * flavour; int /*<<< orphan*/ * name; int /*<<< orphan*/  ref; } ;
struct unix_domain {struct auth_domain h; scalar_t__ addr_changes; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct auth_domain* FUNC0 (char*,struct auth_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct unix_domain*) ; 
 struct unix_domain* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svcauth_unix ; 

struct auth_domain *FUNC6(char *name)
{
	struct auth_domain *rv;
	struct unix_domain *new = NULL;

	rv = FUNC0(name, NULL);
	while(1) {
		if (rv) {
			if (new && rv != &new->h)
				FUNC1(&new->h);

			if (rv->flavour != &svcauth_unix) {
				FUNC1(rv);
				return NULL;
			}
			return rv;
		}

		new = FUNC3(sizeof(*new), GFP_KERNEL);
		if (new == NULL)
			return NULL;
		FUNC4(&new->h.ref);
		new->h.name = FUNC5(name, GFP_KERNEL);
		if (new->h.name == NULL) {
			FUNC2(new);
			return NULL;
		}
		new->h.flavour = &svcauth_unix;
		new->addr_changes = 0;
		rv = FUNC0(name, &new->h);
	}
}