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
struct macro {struct macro* value; struct macro* name; int /*<<< orphan*/  perm; } ;

/* Variables and functions */
 struct macro* FUNC0 (int /*<<< orphan*/ *) ; 
 struct macro* FUNC1 (struct macro*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct macro*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct macro*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  macros ; 

__attribute__((used)) static void
FUNC4(void)
{
	static struct macro *m, *m1;

	m = FUNC0(&macros);
	while (m != NULL) {
		m1 = FUNC1(m, link);
		if (!m->perm) {
			FUNC3(m->name);
			FUNC3(m->value);
			FUNC2(m, link);
			FUNC3(m);
		}
		m = m1;
	}
}