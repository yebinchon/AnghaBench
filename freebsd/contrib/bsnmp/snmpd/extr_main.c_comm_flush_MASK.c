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
struct community {struct community* string; struct lmodule* owner; } ;

/* Variables and functions */
 struct community* FUNC0 (int /*<<< orphan*/ *) ; 
 struct community* FUNC1 (struct community*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct community*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  community_list ; 
 int /*<<< orphan*/  FUNC3 (struct community*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC4(struct lmodule *mod)
{
	struct community *p, *p1;

	p = FUNC0(&community_list);
	while (p != NULL) {
		p1 = FUNC1(p, link);
		if (p->owner == mod) {
			FUNC3(p->string);
			FUNC2(&community_list, p, link);
			FUNC3(p);
		}
		p = p1;
	}
}