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
struct cpp_demangle_data {char* cur; } ;

/* Variables and functions */
 int FUNC0 (struct cpp_demangle_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int FUNC2 (struct cpp_demangle_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cpp_demangle_data*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  decode_fp_to_double ; 
 int /*<<< orphan*/  decode_fp_to_float ; 
 int /*<<< orphan*/  decode_fp_to_float128 ; 
 int /*<<< orphan*/  decode_fp_to_float80 ; 

__attribute__((used)) static int
FUNC5(struct cpp_demangle_data *ddata)
{
	const char *num;

	if (ddata == NULL || *(++ddata->cur) == '\0')
		return (0);

	if (*ddata->cur == '_' && *(ddata->cur + 1) == 'Z') {
		ddata->cur += 2;
		if (*ddata->cur == '\0')
			return (0);
		if (!FUNC4(ddata))
			return (0);
		++ddata->cur;
		return (1);
	}

	switch (*ddata->cur) {
	case 'b':
		if (*(ddata->cur + 2) != 'E')
			return (0);
		switch (*(++ddata->cur)) {
		case '0':
			ddata->cur += 2;
			return (FUNC0(ddata, "false"));
		case '1':
			ddata->cur += 2;
			return (FUNC0(ddata, "true"));
		default:
			return (0);
		}

	case 'd':
		++ddata->cur;
		return (FUNC2(ddata, decode_fp_to_double));

	case 'e':
		++ddata->cur;
		if (sizeof(long double) == 10)
			return (FUNC2(ddata,
			    decode_fp_to_double));
		return (FUNC2(ddata, decode_fp_to_float80));

	case 'f':
		++ddata->cur;
		return (FUNC2(ddata, decode_fp_to_float));

	case 'g':
		++ddata->cur;
		if (sizeof(long double) == 16)
			return (FUNC2(ddata,
			    decode_fp_to_double));
		return (FUNC2(ddata, decode_fp_to_float128));

	case 'i':
	case 'j':
	case 'l':
	case 'm':
	case 'n':
	case 's':
	case 't':
	case 'x':
	case 'y':
		if (*(++ddata->cur) == 'n') {
			if (!FUNC0(ddata, "-"))
				return (0);
			++ddata->cur;
		}
		num = ddata->cur;
		while (*ddata->cur != 'E') {
			if (!FUNC1(*ddata->cur))
				return (0);
			++ddata->cur;
		}
		++ddata->cur;
		return (FUNC3(ddata, num,
		    ddata->cur - num - 1));

	default:
		return (0);
	}
}