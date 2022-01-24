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
struct demangle_data {char* p; int /*<<< orphan*/  vec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct demangle_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct demangle_data*) ; 
 int FUNC4 (struct demangle_data*) ; 
 int FUNC5 (struct demangle_data*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static bool
FUNC9(struct demangle_data *d)
{
	struct demangle_data from, to;
	size_t from_len, to_len;
	bool rtn;
	char *from_str, *to_str;

	if (d == NULL)
		return (false);

	if (FUNC3(&from) == false)
		return (false);

	rtn = false;
	from_str = NULL;
	to_str = NULL;
	if (FUNC3(&to) == false)
		goto clean;

	to.p = d->p;
	if (*to.p == 'Q') {
		++to.p;

		if (FUNC5(&to) == false)
			goto clean;

		/* pop last '::' */
		if (FUNC7(&to.vec) == false)
			goto clean;
	} else {
		if (FUNC4(&to) == false)
			goto clean;

		/* skip '__' */
		to.p += 2;
	}

	if ((to_str = FUNC6(&to.vec, &to_len)) == NULL)
		goto clean;

	from.p = to.p;
	if (*from.p == 'Q') {
		++from.p;

		if (FUNC5(&from) == false)
			goto clean;

		/* pop last '::' */
		if (FUNC7(&from.vec) == false)
			goto clean;
	} else if (FUNC4(&from) == false)
			goto clean;

	if ((from_str = FUNC6(&from.vec, &from_len)) == NULL)
		goto clean;

	if (FUNC8(&d->vec, from_str, from_len) == false)
		goto clean;

	if (FUNC0(&d->vec, "::operator ") == false)
		goto clean;

	if (FUNC8(&d->vec, to_str, to_len) == false)
		goto clean;

	rtn = FUNC0(&d->vec, "()");
clean:
	FUNC2(to_str);
	FUNC2(from_str);
	FUNC1(&to);
	FUNC1(&from);

	return (rtn);
}