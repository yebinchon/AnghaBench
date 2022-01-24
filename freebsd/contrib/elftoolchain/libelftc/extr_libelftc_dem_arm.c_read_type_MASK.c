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
struct demangle_data {unsigned char* p; int cnst; int ptr; int ref; int /*<<< orphan*/  vec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (float) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct demangle_data*) ; 
 int FUNC4 (struct demangle_data*) ; 
 int FUNC5 (struct demangle_data*) ; 
 int FUNC6 (struct demangle_data*) ; 
 int FUNC7 (struct demangle_data*) ; 

__attribute__((used)) static bool
FUNC8(struct demangle_data *d)
{

	if (d == NULL)
		return (false);

	FUNC2(d->p != NULL && "d->p (org str) is NULL");

	while (*d->p == 'U' || *d->p == 'C' || *d->p == 'V' || *d->p == 'S' ||
	       *d->p == 'P' || *d->p == 'R' || *d->p == 'A' || *d->p == 'F' ||
	       *d->p == 'M') {
		switch (*d->p) {
		case 'U' :
			++d->p;

			if (FUNC1(&d->vec, "unsigned ") == false)
				return (false);

			break;
		case 'C' :
			++d->p;

			if (*d->p == 'P')
				d->cnst = true;
			else {
				if (FUNC1(&d->vec, "const ") ==
				    false)
					return (false);
			}

			break;
		case 'V' :
			++d->p;

			if (FUNC1(&d->vec, "volatile ") == false)
				return (false);

			break;
		case 'S' :
			++d->p;

			if (FUNC1(&d->vec, "signed ") == false)
				return (false);

			break;
		case 'P' :
			++d->p;

			if (*d->p == 'F')
				return (FUNC5(d));
			else
				d->ptr = true;

			break;
		case 'R' :
			++d->p;

			d->ref = true;

			break;
		case 'F' :
			break;
		case 'A' :
			++d->p;

			if (FUNC3(d) == false)
				return (false);

			break;
		case 'M' :
			++d->p;

			if (FUNC6(d) == false)
				return (false);

			break;
		default :
			break;
		}
	}

	if (FUNC0(*d->p))
		return (FUNC4(d));

	switch (*d->p) {
	case 'Q' :
		++d->p;

		return (FUNC7(d));
	case 'v' :
		++d->p;

		return (FUNC1(&d->vec, "void"));
	case 'c' :
		++d->p;

		return (FUNC1(&d->vec, "char"));
	case 's' :
		++d->p;

		return (FUNC1(&d->vec, "short"));
	case 'i' :
		++d->p;

		return (FUNC1(&d->vec, "int"));
	case 'l' :
		++d->p;

		return (FUNC1(&d->vec, "long"));
	case 'f' :
		++d->p;

		return (FUNC1(&d->vec, "float"));
	case 'd':
		++d->p;

		return (FUNC1(&d->vec, "double"));
	case 'r':
		++d->p;

		return (FUNC1(&d->vec, "long double"));
	case 'e':
		++d->p;

		return (FUNC1(&d->vec, "..."));
	default:
		return (false);
	};

	/* NOTREACHED */
	return (false);
}