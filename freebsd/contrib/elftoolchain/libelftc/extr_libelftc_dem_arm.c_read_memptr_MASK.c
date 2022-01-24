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
 int FUNC7 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static bool
FUNC8(struct demangle_data *d)
{
	struct demangle_data mptr;
	size_t len;
	bool rtn;
	char *mptr_str;

	if (d == NULL || d->p == NULL)
		return (false);

	if (FUNC3(&mptr) == false)
		return (false);

	rtn = false;
	mptr_str = NULL;

	mptr.p = d->p;
	if (*mptr.p == 'Q') {
		++mptr.p;

		if (FUNC5(&mptr) == false)
			goto clean;
	} else {
		if (FUNC4(&mptr) == false)
			goto clean;
	}

	d->p = mptr.p;

	if ((mptr_str = FUNC6(&mptr.vec, &len)) == NULL)
		goto clean;

	if (FUNC7(&d->vec, mptr_str, len) == false)
		goto clean;

	if (FUNC0(&d->vec, "::*") == false)
		goto clean;

	rtn = true;
clean:
	FUNC2(mptr_str);
	FUNC1(&mptr);

	return (rtn);
}