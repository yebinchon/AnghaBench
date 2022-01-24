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
struct cpp_demangle_data {struct vector_str* cur_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 
 char* FUNC6 (struct vector_str*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC7(struct cpp_demangle_data *ddata,
    const char *str)
{
	struct vector_str *output;
	size_t p_idx, substr_len, len;
	int rtn;
	char *subst_str, *substr;

	if (ddata == NULL || str == NULL)
		return (0);

	if ((len = FUNC5(str)) == 0)
		return (0);

	output = ddata->cur_output;

	p_idx = output->size;
	substr = NULL;
	subst_str = NULL;

	if (!FUNC1(ddata))
		return (0);
	if ((substr = FUNC6(output, p_idx, output->size - 1,
	    &substr_len)) == NULL)
		return (0);

	rtn = 0;
	if ((subst_str = FUNC3(sizeof(char) * (substr_len + len + 1))) ==
	    NULL)
		goto clean;

	FUNC4(subst_str, str, len);
	FUNC4(subst_str + len, substr, substr_len);
	subst_str[substr_len + len] = '\0';

	if (!FUNC0(ddata, subst_str, substr_len + len))
		goto clean;

	rtn = 1;
clean:
	FUNC2(subst_str);
	FUNC2(substr);

	return (rtn);
}