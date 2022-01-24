#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* buf; } ;
struct demangle_data {char* p; int array; TYPE_1__ array_str; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

__attribute__((used)) static bool
FUNC5(struct demangle_data *d)
{
	size_t len;
	const char *end;

	if (d == NULL || d->p == NULL)
		return (false);

	end = d->p;
	FUNC1(end != NULL);

	for (;;) {
		if (*end == '\0')
			return (false);

		if (FUNC0(*end) == 0)
			break;

		++end;
	}

	if (*end != '_')
		return (false);

	len = end - d->p;
	FUNC1(len > 0);

	FUNC2(&d->array_str);
	if (FUNC3(&d->array_str, len + 3) == false)
		return (false);

	FUNC4(d->array_str.buf + 1, d->p, len);
	*d->array_str.buf = '[';
	*(d->array_str.buf + len + 1) = ']';

	d->array = true;
	d->p = end + 1;

	return (true);
}