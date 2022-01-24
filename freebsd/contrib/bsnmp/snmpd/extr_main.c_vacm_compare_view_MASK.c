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
typedef  size_t uint32_t ;
struct vacm_view {scalar_t__* viewname; int /*<<< orphan*/  subtree; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC2(struct vacm_view *v1, struct vacm_view *v2)
{
	uint32_t i;

	if (FUNC1(v1->viewname) < FUNC1(v2->viewname))
		return (-1);
	if (FUNC1(v1->viewname) > FUNC1(v2->viewname))
		return (1);

	for (i = 0; i < FUNC1(v1->viewname); i++) {
		if (v1->viewname[i] < v2->viewname[i])
			return (-1);
		if (v1->viewname[i] > v2->viewname[i])
			return (1);
	}

	return (FUNC0(&v1->subtree, &v2->subtree));
}