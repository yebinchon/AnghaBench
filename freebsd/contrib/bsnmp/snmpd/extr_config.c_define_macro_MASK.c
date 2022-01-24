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
struct macro {int length; int perm; struct macro* value; struct macro* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct macro*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct macro*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  macros ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct macro*,char const*) ; 
 int FUNC4 (char const*) ; 

int
FUNC5(const char *name, const char *value)
{
	struct macro *m;

	if ((m = FUNC2(sizeof(*m))) == NULL)
		return (-1);
	if ((m->name = FUNC2(FUNC4(name) + 1)) == NULL) {
		FUNC1(m);
		return (-1);
	}
	FUNC3(m->name, name);
	if ((m->value = FUNC2(FUNC4(value) + 1)) == NULL) {
		FUNC1(m->name);
		FUNC1(m);
		return (-1);
	}
	FUNC3(m->value, value);
	m->length = FUNC4(value);
	m->perm = 1;
	FUNC0(&macros, m, link);
	return (0);
}