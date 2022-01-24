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
struct lmodule {int dummy; } ;
struct idrange {struct lmodule* owner; } ;

/* Variables and functions */
 struct idrange* FUNC0 (int /*<<< orphan*/ *) ; 
 struct idrange* FUNC1 (struct idrange*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct idrange*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct idrange*) ; 
 int /*<<< orphan*/  idrange_list ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC4(struct lmodule *mod)
{
	struct idrange *p, *p1;

	p = FUNC0(&idrange_list);
	while (p != NULL) {
		p1 = FUNC1(p, link);
		if (p->owner == mod) {
			FUNC2(&idrange_list, p, link);
			FUNC3(p);
		}
		p = p1;
	}
}