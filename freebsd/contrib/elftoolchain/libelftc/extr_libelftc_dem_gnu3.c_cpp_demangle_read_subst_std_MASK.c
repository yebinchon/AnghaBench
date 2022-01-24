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
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vector_str*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*,struct vector_str*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC7 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC8 (struct vector_str*,char*,size_t) ; 
 char* FUNC9 (struct vector_str*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC10(struct cpp_demangle_data *ddata)
{
	struct vector_str *output, v;
	size_t p_idx, subst_str_len;
	int rtn;
	char *subst_str;

	if (ddata == NULL)
		return (0);

	if (!FUNC7(&v))
		return (0);

	subst_str = NULL;
	rtn = 0;
	if (!FUNC0(ddata, "std::"))
		goto clean;

	if (!FUNC1(&v, "std::"))
		goto clean;

	ddata->cur += 2;

	output = ddata->cur_output;

	p_idx = output->size;
	if (!FUNC4(ddata))
		goto clean;

	if ((subst_str = FUNC9(output, p_idx, output->size - 1,
	    &subst_str_len)) == NULL)
		goto clean;

	if (!FUNC8(&v, subst_str, subst_str_len))
		goto clean;

	if (!FUNC2(ddata, &v))
		goto clean;

	if (*ddata->cur == 'I') {
		p_idx = output->size;
		if (!FUNC3(ddata))
			goto clean;
		FUNC5(subst_str);
		if ((subst_str = FUNC9(output, p_idx,
		    output->size - 1, &subst_str_len)) == NULL)
			goto clean;
		if (!FUNC8(&v, subst_str, subst_str_len))
			goto clean;
		if (!FUNC2(ddata, &v))
			goto clean;
	}

	rtn = 1;
clean:
	FUNC5(subst_str);
	FUNC6(&v);

	return (rtn);
}