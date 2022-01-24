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
struct TYPE_3__ {size_t size; } ;
struct cpp_demangle_data {char* cur; TYPE_1__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpp_demangle_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 char* FUNC8 (TYPE_1__*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC9(struct cpp_demangle_data *ddata)
{
	size_t i, num_len, exp_len, p_idx, idx;
	const char *num;
	char *exp;

	if (ddata == NULL || *(++ddata->cur) == '\0')
		return (0);

	if (*ddata->cur == '_') {
		if (*(++ddata->cur) == '\0')
			return (0);

		if (!FUNC5(ddata, NULL))
			return (0);

		if (!FUNC0(ddata, "[]"))
			return (0);
	} else {
		if (FUNC1(*ddata->cur) != 0) {
			num = ddata->cur;
			while (FUNC1(*ddata->cur) != 0)
				++ddata->cur;
			if (*ddata->cur != '_')
				return (0);
			num_len = ddata->cur - num;
			FUNC2(num_len > 0);
			if (*(++ddata->cur) == '\0')
				return (0);
			if (!FUNC5(ddata, NULL))
				return (0);
			if (!FUNC0(ddata, "["))
				return (0);
			if (!FUNC3(ddata, num, num_len))
				return (0);
			if (!FUNC0(ddata, "]"))
				return (0);
		} else {
			p_idx = ddata->output.size;
			if (!FUNC4(ddata))
				return (0);
			if ((exp = FUNC8(&ddata->output, p_idx,
				 ddata->output.size - 1, &exp_len)) == NULL)
				return (0);
			idx = ddata->output.size;
			for (i = p_idx; i < idx; ++i)
				if (!FUNC7(&ddata->output)) {
					FUNC6(exp);
					return (0);
				}
			if (*ddata->cur != '_') {
				FUNC6(exp);
				return (0);
			}
			++ddata->cur;
			if (*ddata->cur == '\0') {
				FUNC6(exp);
				return (0);
			}
			if (!FUNC5(ddata, NULL)) {
				FUNC6(exp);
				return (0);
			}
			if (!FUNC0(ddata, "[")) {
				FUNC6(exp);
				return (0);
			}
			if (!FUNC3(ddata, exp, exp_len)) {
				FUNC6(exp);
				return (0);
			}
			if (!FUNC0(ddata, "]")) {
				FUNC6(exp);
				return (0);
			}
			FUNC6(exp);
		}
	}

	return (1);
}