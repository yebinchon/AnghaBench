#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t size; } ;
struct TYPE_8__ {char* buf; size_t size; } ;
struct demangle_data {char const* p; scalar_t__ type; int ptr; int ref; int cnst; int array; TYPE_1__ vec; TYPE_1__ arg; TYPE_5__ array_str; } ;

/* Variables and functions */
 unsigned int CPP_DEMANGLE_ARM_TRY ; 
 scalar_t__ ENCODE_OP_CT ; 
 scalar_t__ ENCODE_OP_DT ; 
 scalar_t__ ENCODE_OP_USER ; 
 int FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct demangle_data*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct demangle_data*) ; 
 int FUNC5 (char*,int,TYPE_1__*) ; 
 int FUNC6 (struct demangle_data*) ; 
 int FUNC7 (struct demangle_data*) ; 
 int FUNC8 (struct demangle_data*) ; 
 int FUNC9 (struct demangle_data*) ; 
 char* FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,char*,size_t) ; 
 char* FUNC12 (TYPE_1__*,size_t,int,size_t*) ; 

char *
FUNC13(const char *org)
{
	struct demangle_data d;
	size_t arg_begin, arg_len;
	unsigned int try;
	char *rtn, *arg;

	if (org == NULL)
		return (NULL);

	if (FUNC4(&d) == false)
		return (NULL);

	try = 0;
	rtn = NULL;

	d.p = org;
	if (FUNC6(&d) == false)
		goto clean;

	if (d.type == ENCODE_OP_CT) {
		if (FUNC5("::", 2, &d.vec) == false)
			goto clean;

		goto flat;
	}

	if (d.type == ENCODE_OP_DT) {
		if (FUNC5("::~", 3, &d.vec) == false)
			goto clean;

		goto flat;
	}

	if (d.type == ENCODE_OP_USER)
		goto flat;

	/* function type */
	if (*d.p != 'F')
		goto clean;
	++d.p;

	/* start argument types */
	if (FUNC0(&d.vec, "(") == false)
		goto clean;

	for (;;) {
		if (*d.p == 'T') {
			const int rtn_subst = FUNC7(&d);

			if (rtn_subst == -1)
				goto clean;
			else if (rtn_subst == 1)
				break;

			continue;
		}

		if (*d.p == 'N') {
			const int rtn_subst_iter = FUNC8(&d);

			if (rtn_subst_iter == -1)
				goto clean;
			else if(rtn_subst_iter == 1)
				break;

			continue;
		}

		arg_begin = d.vec.size;

		if (FUNC9(&d) == false)
			goto clean;

		if (d.ptr == true) {
			if (FUNC0(&d.vec, "*") == false)
				goto clean;

			d.ptr = false;
		}

		if (d.ref == true) {
			if (FUNC0(&d.vec, "&") == false)
				goto clean;

			d.ref = false;
		}

		if (d.cnst == true) {
			if (FUNC0(&d.vec, " const") == false)
				goto clean;

			d.cnst = false;
		}

		if (d.array == true) {
			if (FUNC11(&d.vec, d.array_str.buf,
				d.array_str.size) == false)
				goto clean;

			FUNC1(&d.array_str);
			d.array = false;
		}

		if (*d.p == '\0')
			break;

		if ((arg = FUNC12(&d.vec, arg_begin, d.vec.size - 1,
			    &arg_len)) == NULL)
			goto clean;

		if (FUNC11(&d.arg, arg, arg_len) == false)
			goto clean;

		FUNC3(arg);

		if (FUNC0(&d.vec, ", ") == false)
			goto clean;

		if (++try > CPP_DEMANGLE_ARM_TRY)
			goto clean;
	}

	/* end argument types */
	if (FUNC0(&d.vec, ")") == false)
		goto clean;

flat:
	rtn = FUNC10(&d.vec, NULL);
clean:
	FUNC2(&d);

	return (rtn);
}