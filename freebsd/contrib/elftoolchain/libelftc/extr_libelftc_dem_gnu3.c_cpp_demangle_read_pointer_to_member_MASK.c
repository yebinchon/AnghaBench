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
struct vector_type_qualifier {int dummy; } ;
struct TYPE_4__ {size_t size; } ;
struct cpp_demangle_data {char* cur; int func_type; int /*<<< orphan*/  cmd; TYPE_1__ class_type; TYPE_1__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*) ; 
 int /*<<< orphan*/  READ_PTRMEM ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,size_t) ; 
 char* FUNC8 (TYPE_1__*,size_t,int,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC10 (struct vector_type_qualifier*) ; 

__attribute__((used)) static int
FUNC11(struct cpp_demangle_data *ddata,
    struct vector_type_qualifier *v)
{
	size_t class_type_len, i, idx, p_idx;
	int p_func_type, rtn;
	char *class_type;

	if (ddata == NULL || *ddata->cur != 'M' || *(++ddata->cur) == '\0')
		return (0);

	p_idx = ddata->output.size;
	if (!FUNC2(ddata, NULL))
		return (0);

	if ((class_type = FUNC8(&ddata->output, p_idx,
	    ddata->output.size - 1, &class_type_len)) == NULL)
		return (0);

	rtn = 0;
	idx = ddata->output.size;
	for (i = p_idx; i < idx; ++i)
		if (!FUNC6(&ddata->output))
			goto clean1;

	if (!FUNC5(&ddata->cmd, READ_PTRMEM, v))
		goto clean1;

	if (!FUNC7(&ddata->class_type, class_type, class_type_len))
		goto clean2;

	p_func_type = ddata->func_type;
	if (!FUNC2(ddata, NULL))
		goto clean3;

	if (p_func_type == ddata->func_type) {
		if (!FUNC0(ddata, " "))
			goto clean3;
		if (!FUNC1(ddata, class_type, class_type_len))
			goto clean3;
		if (!FUNC0(ddata, "::*"))
			goto clean3;
	}

	rtn = 1;
clean3:
	if (!FUNC6(&ddata->class_type))
		rtn = 0;
clean2:
	if (!FUNC4(&ddata->cmd))
		rtn = 0;
clean1:
	FUNC3(class_type);

	FUNC9(v);
	if (!FUNC10(v))
		return (0);

	return (rtn);
}