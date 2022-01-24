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
struct demangle_data {char* p; int ptr; int ref; int cnst; int /*<<< orphan*/  vec; } ;

/* Variables and functions */
 int CPP_DEMANGLE_ARM_TRY ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct demangle_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct demangle_data*) ; 
 int FUNC4 (struct demangle_data*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,size_t*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static bool
FUNC7(struct demangle_data *d)
{
	struct demangle_data fptr;
	size_t arg_len, rtn_len;
	char *arg_type, *rtn_type;
	int lim;

	if (d == NULL)
		return (false);

	if (FUNC3(&fptr) == false)
		return (false);

	fptr.p = d->p + 1;
	lim = 0;
	arg_type = NULL;
	rtn_type = NULL;

	for (;;) {
		if (FUNC4(&fptr) == false) {
			FUNC1(&fptr);

			return (false);
		}

		if (fptr.ptr == true) {
			if (FUNC0(&fptr.vec, "*") == false) {
				FUNC1(&fptr);

				return (false);
			}

			fptr.ptr = false;
		}

		if (fptr.ref == true) {
			if (FUNC0(&fptr.vec, "&") == false) {
				FUNC1(&fptr);

				return (false);
			}

			fptr.ref = false;
		}

		if (fptr.cnst == true) {
			if (FUNC0(&fptr.vec, " const") == false) {
				FUNC1(&fptr);

				return (false);
			}

			fptr.cnst = false;
		}

		if (*fptr.p == '_')
			break;

		if (FUNC0(&fptr.vec, ", ") == false) {
			FUNC1(&fptr);

			return (false);
		}

		if (++lim > CPP_DEMANGLE_ARM_TRY) {

			FUNC1(&fptr);

			return (false);
		}
	}

	arg_type = FUNC5(&fptr.vec, &arg_len);
	/* skip '_' */
	d->p = fptr.p + 1;

	FUNC1(&fptr);

	if (FUNC3(&fptr) == false) {
		FUNC2(arg_type);

		return (false);
	}

	fptr.p = d->p;
	lim = 0;

	if (FUNC4(&fptr) == false) {
		FUNC2(arg_type);
		FUNC1(&fptr);

		return (false);
	}

	rtn_type = FUNC5(&fptr.vec, &rtn_len);
	d->p = fptr.p;


	FUNC1(&fptr);

	if (FUNC6(&d->vec, rtn_type, rtn_len) == false) {
		FUNC2(rtn_type);
		FUNC2(arg_type);

		return (false);
	}

	FUNC2(rtn_type);

	if (FUNC0(&d->vec, " (*)(") == false) {
		FUNC2(arg_type);

		return (false);
	}

	if (FUNC6(&d->vec, arg_type, arg_len) == false) {
		FUNC2(arg_type);

		return (false);
	}

	FUNC2(arg_type);

	return (FUNC0(&d->vec, ")"));
}