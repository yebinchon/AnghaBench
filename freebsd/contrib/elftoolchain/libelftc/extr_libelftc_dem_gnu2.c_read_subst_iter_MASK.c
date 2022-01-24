#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char** container; } ;
struct demangle_data {int* p; TYPE_1__ vec; TYPE_1__ arg; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 int FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 size_t FUNC2 (int*,char**,int) ; 

__attribute__((used)) static int
FUNC3(struct demangle_data *d)
{
	int i;
	size_t idx;
	char repeat;
	char *str;

	if (d == NULL)
		return (-1);

	++d->p;
	FUNC1(*d->p > 48 && *d->p < 58 && "*d->p not in ASCII numeric range");

	repeat = *d->p - 48;

	FUNC1(repeat > 1);

	++d->p;

	idx = FUNC2(d->p, &str, 10);
	if (idx == 0 && (errno == EINVAL || errno == ERANGE))
		return (-1);

	FUNC1(idx > 0);
	FUNC1(str != NULL);

	d->p = str;

	for (i = 0; i < repeat ; ++i) {
		if (FUNC0(&d->vec, d->arg.container[idx - 1]) == false)
			return (-1);

		if (FUNC0(&d->arg, d->arg.container[idx - 1]) == false)
			return (-1);

		if (i != repeat - 1 &&
		    FUNC0(&d->vec, ", ") == false)
			return (-1);
	}

	if (*d->p == '\0')
		return (1);

	return (0);
}