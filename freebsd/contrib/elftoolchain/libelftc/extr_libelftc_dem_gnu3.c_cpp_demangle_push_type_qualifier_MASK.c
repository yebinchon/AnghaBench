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
struct TYPE_2__ {char** container; int /*<<< orphan*/  size; } ;
struct vector_type_qualifier {size_t size; int* q_container; TYPE_1__ ext_name; } ;
struct vector_str {int dummy; } ;
struct cpp_demangle_data {int /*<<< orphan*/  push_qualifier; } ;
typedef  enum type_qualifier { ____Placeholder_type_qualifier } type_qualifier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*) ; 
 int /*<<< orphan*/  PUSH_CV_QUALIFIER ; 
 int /*<<< orphan*/  PUSH_NON_CV_QUALIFIER ; 
#define  TYPE_CMX 137 
#define  TYPE_CST 136 
#define  TYPE_EXT 135 
#define  TYPE_IMG 134 
#define  TYPE_PTR 133 
#define  TYPE_REF 132 
#define  TYPE_RREF 131 
#define  TYPE_RST 130 
#define  TYPE_VAT 129 
#define  TYPE_VEC 128 
 int /*<<< orphan*/  FUNC1 (struct vector_str*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*,struct vector_str*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,char*) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC8 (struct vector_str*) ; 

__attribute__((used)) static int
FUNC9(struct cpp_demangle_data *ddata,
    struct vector_type_qualifier *v, const char *type_str)
{
	struct vector_str subst_v;
	enum type_qualifier t;
	size_t idx, e_idx, e_len;
	char *buf;
	int rtn;
	bool cv;

	if (ddata == NULL || v == NULL)
		return (0);

	if ((idx = v->size) == 0)
		return (1);

	rtn = 0;
	if (type_str != NULL) {
		if (!FUNC8(&subst_v))
			return (0);
		if (!FUNC1(&subst_v, type_str))
			goto clean;
	}

	cv = true;
	e_idx = 0;
	while (idx > 0) {
		switch (v->q_container[idx - 1]) {
		case TYPE_PTR:
			cv = false;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
				break;
			if (!FUNC0(ddata, "*"))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC1(&subst_v, "*"))
					goto clean;
				if (!FUNC2(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_REF:
			cv = false;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
				break;
			if (!FUNC0(ddata, "&"))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC1(&subst_v, "&"))
					goto clean;
				if (!FUNC2(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_RREF:
			cv = false;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
				break;
			if (!FUNC0(ddata, "&&"))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC1(&subst_v, "&&"))
					goto clean;
				if (!FUNC2(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_CMX:
			cv = false;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
				break;
			if (!FUNC0(ddata, " complex"))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC1(&subst_v, " complex"))
					goto clean;
				if (!FUNC2(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_IMG:
			cv = false;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
				break;
			if (!FUNC0(ddata, " imaginary"))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC1(&subst_v, " imaginary"))
					goto clean;
				if (!FUNC2(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_EXT:
			cv = false;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
				break;
			if (v->ext_name.size == 0 ||
			    e_idx > v->ext_name.size - 1)
				goto clean;
			if ((e_len = FUNC6(v->ext_name.container[e_idx])) ==
			    0)
				goto clean;
			if ((buf = FUNC4(e_len + 2)) == NULL)
				goto clean;
			FUNC5(buf, e_len + 2, " %s",
			    v->ext_name.container[e_idx]);

			if (!FUNC0(ddata, buf)) {
				FUNC3(buf);
				goto clean;
			}

			if (type_str != NULL) {
				if (!FUNC1(&subst_v, buf)) {
					FUNC3(buf);
					goto clean;
				}
				if (!FUNC2(ddata,
				    &subst_v)) {
					FUNC3(buf);
					goto clean;
				}
			}
			FUNC3(buf);
			++e_idx;
			break;

		case TYPE_RST:
			if (ddata->push_qualifier == PUSH_NON_CV_QUALIFIER &&
			    cv)
				break;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER && !cv)
				break;
			if (!FUNC0(ddata, " restrict"))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC1(&subst_v, " restrict"))
					goto clean;
				if (idx - 1 > 0) {
					t = v->q_container[idx - 2];
					if (t == TYPE_RST || t == TYPE_VAT ||
					    t == TYPE_CST)
						break;
				}
				if (!FUNC2(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_VAT:
			if (ddata->push_qualifier == PUSH_NON_CV_QUALIFIER &&
			    cv)
				break;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER && !cv)
				break;
			if (!FUNC0(ddata, " volatile"))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC1(&subst_v, " volatile"))
					goto clean;
				if (idx - 1 > 0) {
					t = v->q_container[idx - 2];
					if (t == TYPE_RST || t == TYPE_VAT ||
					    t == TYPE_CST)
						break;
				}
				if (!FUNC2(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_CST:
			if (ddata->push_qualifier == PUSH_NON_CV_QUALIFIER &&
			    cv)
				break;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER && !cv)
				break;
			if (!FUNC0(ddata, " const"))
				goto clean;
			if (type_str != NULL) {
				if (!FUNC1(&subst_v, " const"))
					goto clean;
				if (idx - 1 > 0) {
					t = v->q_container[idx - 2];
					if (t == TYPE_RST || t == TYPE_VAT ||
					    t == TYPE_CST)
						break;
				}
				if (!FUNC2(ddata,
				    &subst_v))
					goto clean;
			}
			break;

		case TYPE_VEC:
			cv = false;
			if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
				break;
			if (v->ext_name.size == 0 ||
			    e_idx > v->ext_name.size - 1)
				goto clean;
			if ((e_len = FUNC6(v->ext_name.container[e_idx])) ==
			    0)
				goto clean;
			if ((buf = FUNC4(e_len + 12)) == NULL)
				goto clean;
			FUNC5(buf, e_len + 12, " __vector(%s)",
			    v->ext_name.container[e_idx]);
			if (!FUNC0(ddata, buf)) {
				FUNC3(buf);
				goto clean;
			}
			if (type_str != NULL) {
				if (!FUNC1(&subst_v, buf)) {
					FUNC3(buf);
					goto clean;
				}
				if (!FUNC2(ddata,
				    &subst_v)) {
					FUNC3(buf);
					goto clean;
				}
			}
			FUNC3(buf);
			++e_idx;
			break;
		}
		--idx;
	}

	rtn = 1;
clean:
	if (type_str != NULL)
		FUNC7(&subst_v);

	return (rtn);
}