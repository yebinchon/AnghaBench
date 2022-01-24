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
struct demangle_data {char* p; scalar_t__ type; int cnst_fn; TYPE_1__ vec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ ENCODE_FUNC ; 
 scalar_t__ ENCODE_OP ; 
 void* ENCODE_OP_CT ; 
 scalar_t__ ENCODE_OP_DT ; 
 scalar_t__ ENCODE_OP_TF ; 
 scalar_t__ ENCODE_OP_TI ; 
 scalar_t__ ENCODE_OP_USER ; 
 scalar_t__ ENCODE_OP_VT ; 
 int FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int FUNC6 (struct demangle_data*) ; 
 int FUNC7 (struct demangle_data*) ; 
 int FUNC8 (struct demangle_data*) ; 
 int FUNC9 (struct demangle_data*) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t,char*,char*) ; 
 size_t FUNC11 (char*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*,char*,size_t) ; 

__attribute__((used)) static bool
FUNC14(struct demangle_data *d)
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

		/* CTOR */
		if (*d->p == 'Q' && FUNC0(*(d->p + 1))) {
			++d->p;
			d->type = ENCODE_OP_CT;

			if (FUNC9(d) == false)
				return (false);

			return (FUNC12(&d->vec));
		} else if (FUNC0(*d->p)) {
			d->type = ENCODE_OP_CT;

			return (FUNC6(d));
		}

		d->type = ENCODE_OP;
		if (FUNC8(d) == false) {
			/* not good condition, start function name with '__' */
			d->type = ENCODE_FUNC;

			if (FUNC1(&d->vec, "__") == false)
				return (false);
			
			return (FUNC7(d));
		}

		if (d->type == ENCODE_OP_USER ||
		    d->type == ENCODE_OP_TF ||
		    d->type == ENCODE_OP_TI)
			return (true);

		/* skip "__" */
		d->p += 2;

		if (*d->p == 'C') {
			++d->p;

			d->cnst_fn = true;
		}

		/* assume delimiter is removed */
		if (*d->p == 'Q' && FUNC0(*(d->p + 1))) {
			++d->p;

			FUNC2(d->vec.size > 0);

			len = FUNC11(d->vec.container[d->vec.size - 1]);
			if ((op_name = FUNC4(sizeof(char) * (len + 1)))
			    == NULL)
				return (false);

			FUNC10(op_name, len + 1, "%s",
			    d->vec.container[d->vec.size - 1]);
			FUNC12(&d->vec);

			if (FUNC9(d) == false)
				goto clean;

			if (FUNC1(&d->vec, "::") == false)
				goto clean;

			if (FUNC13(&d->vec, op_name, len) == false)
				goto clean;

			rtn = true;
		} else if (FUNC0(*d->p)) {
			FUNC2(d->vec.size > 0);

			len = FUNC11(d->vec.container[d->vec.size - 1]);
			if ((op_name = FUNC4(sizeof(char) * (len + 1)))
			    == NULL)
				return (false);

			FUNC10(op_name, len + 1, "%s",
			    d->vec.container[d->vec.size - 1]);
			FUNC12(&d->vec);

			if (FUNC6(d) == false)
				goto clean;

			if (FUNC1(&d->vec, "::") == false)
				goto clean;

			if (FUNC13(&d->vec, op_name, len) == false)
				goto clean;

			rtn = true;
		}
	} else if (FUNC5(d->p, "_$_", 3) == 0) {
		/* DTOR */
		d->p += 3;
		d->type = ENCODE_OP_DT;

		if (*d->p == 'Q' && FUNC0(*(d->p + 1))) {
			++d->p;

			if (FUNC9(d) == false)
				return (false);

			return (FUNC12(&d->vec));
		} else if (FUNC0(*d->p))
			return (FUNC6(d));

		return (false);
	} else if (FUNC5(d->p, "_vt$", 4) == 0) {
		/* vtable */
		d->p += 4;
		d->type = ENCODE_OP_VT;

		if (*d->p == 'Q' && FUNC0(*(d->p + 1))) {
			++d->p;

			if (FUNC9(d) == false)
				return (false);

			if (FUNC12(&d->vec) == false)
				return (false);
		} else if (FUNC0(*d->p)) {
			if (FUNC6(d) == false)
				return (false);
		}

		return (FUNC1(&d->vec, " virtual table"));
	} else
		return (FUNC7(d));
clean:
	FUNC3(op_name);

	return (rtn);
}