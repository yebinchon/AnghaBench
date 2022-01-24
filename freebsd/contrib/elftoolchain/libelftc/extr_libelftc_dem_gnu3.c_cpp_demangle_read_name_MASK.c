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
struct cpp_demangle_data {char* cur; struct vector_str* cur_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,struct vector_str*) ; 
 int FUNC1 (struct cpp_demangle_data*) ; 
 int FUNC2 (struct cpp_demangle_data*) ; 
 int FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC9 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC10 (struct vector_str*,char*,size_t) ; 
 char* FUNC11 (struct vector_str*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC12(struct cpp_demangle_data *ddata)
{
	struct vector_str *output, v;
	size_t p_idx, subst_str_len;
	int rtn;
	char *subst_str;

	if (ddata == NULL || *ddata->cur == '\0')
		return (0);

	output = ddata->cur_output;

	subst_str = NULL;

	switch (*ddata->cur) {
	case 'S':
		return (FUNC3(ddata));
	case 'N':
		return (FUNC2(ddata));
	case 'Z':
		return (FUNC1(ddata));
	}

	if (!FUNC9(&v))
		return (0);

	p_idx = output->size;
	rtn = 0;
	if (!FUNC5(ddata))
		goto clean;
	if ((subst_str = FUNC11(output, p_idx, output->size - 1,
	    &subst_str_len)) == NULL)
		goto clean;
	if (subst_str_len > 8 && FUNC7(subst_str, "operator") != NULL) {
		rtn = 1;
		goto clean;
	}
	if (!FUNC10(&v, subst_str, subst_str_len))
		goto clean;
	if (!FUNC0(ddata, &v))
		goto clean;

	if (*ddata->cur == 'I') {
		p_idx = output->size;
		if (!FUNC4(ddata))
			goto clean;
		FUNC6(subst_str);
		if ((subst_str = FUNC11(output, p_idx,
		    output->size - 1, &subst_str_len)) == NULL)
			goto clean;
		if (!FUNC10(&v, subst_str, subst_str_len))
			goto clean;
		if (!FUNC0(ddata, &v))
			goto clean;
	}

	rtn = 1;

clean:
	FUNC6(subst_str);
	FUNC8(&v);

	return (rtn);
}