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
struct vector_str {size_t size; } ;
struct cpp_demangle_data {char* cur; int mem_rst; int mem_vat; int mem_cst; int mem_ref; int mem_rref; struct vector_str* cur_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DEMANGLE_TRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vector_str*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*,struct vector_str*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC9 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC10 (struct vector_str*,char*,size_t) ; 
 char* FUNC11 (struct vector_str*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC12(struct cpp_demangle_data *ddata)
{
	struct vector_str *output, v;
	size_t limit, p_idx, subst_str_len;
	int rtn;
	char *subst_str;

	if (ddata == NULL || *ddata->cur != 'N')
		return (0);
	if (*(++ddata->cur) == '\0')
		return (0);

	do {
		switch (*ddata->cur) {
		case 'r':
			ddata->mem_rst = true;
			break;
		case 'V':
			ddata->mem_vat = true;
			break;
		case 'K':
			ddata->mem_cst = true;
			break;
		case 'R':
			ddata->mem_ref = true;
			break;
		case 'O':
			ddata->mem_rref = true;
			break;
		default:
			goto next;
		}
	} while (*(++ddata->cur));

next:
	output = ddata->cur_output;
	if (!FUNC9(&v))
		return (0);

	rtn = 0;
	limit = 0;
	for (;;) {
		p_idx = output->size;
		switch (*ddata->cur) {
		case 'I':
			if (!FUNC4(ddata))
				goto clean;
			break;
		case 'S':
			if (!FUNC3(ddata))
				goto clean;
			break;
		case 'T':
			if (!FUNC5(ddata))
				goto clean;
			break;
		default:
			if (!FUNC6(ddata))
				goto clean;
		}

		if (p_idx == output->size)
			goto next_comp;
		if ((subst_str = FUNC11(output, p_idx,
		    output->size - 1, &subst_str_len)) == NULL)
			goto clean;
		if (!FUNC10(&v, subst_str, subst_str_len)) {
			FUNC7(subst_str);
			goto clean;
		}
		FUNC7(subst_str);

		if (!FUNC2(ddata, &v))
			goto clean;

	next_comp:
		if (*ddata->cur == 'E')
			break;
		else if (*ddata->cur != 'I' && *ddata->cur != 'C' &&
		    *ddata->cur != 'D' && p_idx != output->size) {
			if (!FUNC0(ddata, "::"))
				goto clean;
			if (!FUNC1(&v, "::"))
				goto clean;
		}
		if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
			goto clean;
	}

	++ddata->cur;
	rtn = 1;

clean:
	FUNC8(&v);

	return (rtn);
}