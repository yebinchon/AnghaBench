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
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vector_str*) ; 
 char* FUNC3 (struct vector_str*,size_t,int,size_t*) ; 

__attribute__((used)) static int
FUNC4(struct cpp_demangle_data *ddata, char **str)
{
	struct vector_str *output;
	size_t i, p_idx, idx, name_len;
	char *name;

	output = ddata->cur_output;

	p_idx = output->size;

	if (!FUNC0(ddata))
		return (0);

	if ((name = FUNC3(output, p_idx, output->size - 1,
	    &name_len)) == NULL)
		return (0);

	idx = output->size;
	for (i = p_idx; i < idx; ++i) {
		if (!FUNC2(output)) {
			FUNC1(name);
			return (0);
		}
	}

	*str = name;

	return (1);
}