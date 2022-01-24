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
struct exec_domain {struct exec_domain* next; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct exec_domain* exec_domains ; 
 int /*<<< orphan*/  exec_domains_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(struct exec_domain *ep)
{
	struct exec_domain	*tmp;
	int			err = -EBUSY;

	if (ep == NULL)
		return -EINVAL;

	if (ep->next != NULL)
		return -EBUSY;

	FUNC0(&exec_domains_lock);
	for (tmp = exec_domains; tmp; tmp = tmp->next) {
		if (tmp == ep)
			goto out;
	}

	ep->next = exec_domains;
	exec_domains = ep;
	err = 0;

out:
	FUNC1(&exec_domains_lock);
	return (err);
}