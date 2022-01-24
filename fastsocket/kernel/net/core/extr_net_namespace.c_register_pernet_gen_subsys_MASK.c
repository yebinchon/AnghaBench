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
struct pernet_operations {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  first_device ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_generic_ids ; 
 int /*<<< orphan*/  net_mutex ; 
 int FUNC5 (int /*<<< orphan*/ ,struct pernet_operations*) ; 

int FUNC6(int *id, struct pernet_operations *ops)
{
	int rv;

	FUNC3(&net_mutex);
again:
	rv = FUNC0(&net_generic_ids, 1, id);
	if (rv < 0) {
		if (rv == -EAGAIN) {
			FUNC1(&net_generic_ids, GFP_KERNEL);
			goto again;
		}
		goto out;
	}
	rv = FUNC5(first_device, ops);
	if (rv < 0)
		FUNC2(&net_generic_ids, *id);
out:
	FUNC4(&net_mutex);
	return rv;
}