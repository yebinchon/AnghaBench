#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int size; char** container; } ;
struct demangle_data {char* p; scalar_t__ type; TYPE_1__ vec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ ENCODE_OP ; 
 scalar_t__ ENCODE_OP_CT ; 
 scalar_t__ ENCODE_OP_DT ; 
 scalar_t__ ENCODE_OP_USER ; 
 int FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (struct demangle_data*) ; 
 int FUNC6 (struct demangle_data*) ; 
 int FUNC7 (struct demangle_data*) ; 
 int FUNC8 (struct demangle_data*) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,char*,char*) ; 
 size_t FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,char*,size_t) ; 

__attribute__((used)) static bool
FUNC13(struct demangle_data *d)
{
	size_t len;
	bool rtn;
	char *op_name;

	if (d == NULL)
		return (false);

	rtn = false;
	op_name = NULL;

	FUNC2(d->p != NULL && "d->p (org str) is NULL");

	if (*d->p == '_' && *(d->p + 1) == '_') {
		d->p += 2;

		d->type = ENCODE_OP;
		if (FUNC7(d) == false)
			return (false);

		if (d->type == ENCODE_OP_CT || d->type == ENCODE_OP_DT ||
		    d->type == ENCODE_OP_USER)
			return (true);

		/* skip "__" */
		d->p += 2;

		/* assume delimiter is removed */
		if (*d->p == 'Q' && FUNC0(*(d->p + 1))) {
			++d->p;

			FUNC2(d->vec.size > 0);

			len = FUNC10(d->vec.container[d->vec.size - 1]);
			if ((op_name = FUNC4(sizeof(char) * (len + 1)))
			    == NULL)
				return (false);

			FUNC9(op_name, len + 1, "%s",
			    d->vec.container[d->vec.size - 1]);
			FUNC11(&d->vec);

			if (FUNC8(d) == false)
				goto clean;

			if (FUNC1(&d->vec, "::") == false)
				goto clean;

			if (FUNC12(&d->vec, op_name, len) == false)
				goto clean;

			rtn = true;
		} else if (FUNC0(*d->p)) {
			FUNC2(d->vec.size > 0);

			len = FUNC10(d->vec.container[d->vec.size - 1]);
			if ((op_name = FUNC4(sizeof(char) * (len + 1)))
			    == NULL)
				return (false);

			FUNC9(op_name, len + 1, "%s",
			    d->vec.container[d->vec.size - 1]);
			FUNC11(&d->vec);

			if (FUNC5(d) == false)
				goto clean;

			if (FUNC1(&d->vec, "::") == false)
				goto clean;

			if (FUNC12(&d->vec, op_name, len) == false)
				goto clean;

			rtn = true;
		}
	} else
		return (FUNC6(d));

clean:
	FUNC3(op_name);

	return (rtn);
}