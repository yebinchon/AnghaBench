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
struct demangle_data {char* p; int cnst_fn; int /*<<< orphan*/  vec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct demangle_data*) ; 
 int FUNC4 (struct demangle_data*) ; 
 char* FUNC5 (char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static bool
FUNC7(struct demangle_data *d)
{
	size_t len;
	const char *name;
	char *delim;

	if (d == NULL)
		return (false);

	FUNC2(d->p != NULL && "d->p (org str) is NULL");
	if ((delim = FUNC5(d->p, "__")) == NULL)
		return (false);

	len = delim - d->p;
	FUNC2(len != 0);

	name = d->p;

	d->p = delim + 2;

	if (*d->p == 'C') {
		++d->p;

		d->cnst_fn = true;
	}

	if (*d->p == 'Q' && FUNC0(*(d->p + 1))) {
		++d->p;

		if (FUNC4(d) == false)
			return (false);
	} else if (FUNC0(*d->p)) {
		if (FUNC3(d) == false)
			return (false);

		if (FUNC1(&d->vec, "::") == false)
			return (false);
	}

	return (FUNC6(&d->vec, name, len));
}