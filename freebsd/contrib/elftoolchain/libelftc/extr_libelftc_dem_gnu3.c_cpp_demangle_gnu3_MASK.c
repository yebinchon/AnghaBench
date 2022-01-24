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
struct vector_str {scalar_t__ size; } ;
struct type_delimit {int paren; int firstp; } ;
struct TYPE_2__ {int size; } ;
struct cpp_demangle_data {char* cur; int is_tmpl; struct vector_str output; scalar_t__ mem_rref; scalar_t__ mem_ref; scalar_t__ mem_rst; scalar_t__ mem_cst; scalar_t__ mem_vat; struct vector_str* cur_output; TYPE_1__ subst; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DEMANGLE_TRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct vector_str*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*,struct type_delimit*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vector_str*) ; 
 char* FUNC10 (struct vector_str*,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct vector_str*,struct vector_str*) ; 

char *
FUNC14(const char *org)
{
	struct cpp_demangle_data ddata;
	struct vector_str ret_type;
	struct type_delimit td;
	ssize_t org_len;
	unsigned int limit;
	char *rtn;
	bool has_ret, more_type;

	if (org == NULL || (org_len = FUNC7(org)) < 2)
		return (NULL);

	if (org_len > 11 && !FUNC8(org, "_GLOBAL__I_", 11)) {
		if ((rtn = FUNC5(org_len + 19)) == NULL)
			return (NULL);
		FUNC6(rtn, org_len + 19,
		    "global constructors keyed to %s", org + 11);
		return (rtn);
	}

	if (org[0] != '_' || org[1] != 'Z')
		return (NULL);

	if (!FUNC2(&ddata, org + 2))
		return (NULL);

	rtn = NULL;
	has_ret = more_type = false;

	if (!FUNC3(&ddata))
		goto clean;

	/*
	 * Pop function name from substitution candidate list.
	 */
	if (*ddata.cur != 0 && ddata.subst.size >= 1) {
		if (!FUNC12(&ddata.subst))
			goto clean;
	}

	td.paren = false;
	td.firstp = true;
	limit = 0;

	/*
	 * The first type is a return type if we just demangled template
	 * args. (the template args is right next to the function name,
	 * which means it's a template function)
	 */
	if (ddata.is_tmpl) {
		ddata.is_tmpl = false;
		if (!FUNC11(&ret_type))
			goto clean;
		ddata.cur_output = &ret_type;
		has_ret = true;
	}

	while (*ddata.cur != '\0') {
		/*
		 * Breaking at some gcc info at tail. e.g) @@GLIBCXX_3.4
		 */
		if (*ddata.cur == '@' && *(ddata.cur + 1) == '@')
			break;

		if (has_ret) {
			/* Read return type */
			if (!FUNC4(&ddata, NULL))
				goto clean;
		} else {
			/* Read function arg type */
			if (!FUNC4(&ddata, &td))
				goto clean;
		}

		if (has_ret) {
			/* Push return type to the beginning */
			if (!FUNC0(&ret_type, " "))
				goto clean;
			if (!FUNC13(&ddata.output,
			    &ret_type))
				goto clean;
			ddata.cur_output = &ddata.output;
			FUNC9(&ret_type);
			has_ret = false;
			more_type = true;
		} else if (more_type)
			more_type = false;
		if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
			goto clean;
	}
	if (more_type)
		goto clean;

	if (ddata.output.size == 0)
		goto clean;
	if (td.paren && !FUNC0(&ddata.output, ")"))
		goto clean;
	if (ddata.mem_vat && !FUNC0(&ddata.output, " volatile"))
		goto clean;
	if (ddata.mem_cst && !FUNC0(&ddata.output, " const"))
		goto clean;
	if (ddata.mem_rst && !FUNC0(&ddata.output, " restrict"))
		goto clean;
	if (ddata.mem_ref && !FUNC0(&ddata.output, " &"))
		goto clean;
	if (ddata.mem_rref && !FUNC0(&ddata.output, " &&"))
		goto clean;

	rtn = FUNC10(&ddata.output, (size_t *) NULL);

clean:
	if (has_ret)
		FUNC9(&ret_type);

	FUNC1(&ddata);

	return (rtn);
}