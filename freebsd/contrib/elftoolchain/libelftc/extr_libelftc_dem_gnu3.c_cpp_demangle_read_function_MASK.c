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
struct vector_type_qualifier {size_t size; scalar_t__* q_container; } ;
struct type_delimit {int paren; int firstp; } ;
struct read_cmd_item {struct vector_type_qualifier* data; } ;
struct TYPE_2__ {size_t size; char** container; } ;
struct cpp_demangle_data {float* cur; int is_functype; int ref_qualifier; int ref_qualifier_type; void* push_qualifier; int /*<<< orphan*/  func_type; TYPE_1__ class_type; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DEMANGLE_TRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*) ; 
 void* PUSH_ALL_QUALIFIER ; 
 void* PUSH_CV_QUALIFIER ; 
 void* PUSH_NON_CV_QUALIFIER ; 
 int /*<<< orphan*/  READ_PTRMEM ; 
 scalar_t__ TYPE_CST ; 
#define  TYPE_REF 129 
#define  TYPE_RREF 128 
 scalar_t__ TYPE_RST ; 
 scalar_t__ TYPE_VAT ; 
 int /*<<< orphan*/  FUNC1 (struct cpp_demangle_data*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct cpp_demangle_data*,struct vector_type_qualifier*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*,struct type_delimit*) ; 
 size_t FUNC4 (char const*) ; 
 struct read_cmd_item* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC7 (struct vector_type_qualifier*) ; 

__attribute__((used)) static int
FUNC8(struct cpp_demangle_data *ddata, int *ext_c,
    struct vector_type_qualifier *v)
{
	struct type_delimit td;
	struct read_cmd_item *rc;
	size_t class_type_size, class_type_len, limit;
	const char *class_type;
	int i;
	bool paren, non_cv_qualifier;

	if (ddata == NULL || *ddata->cur != 'F' || v == NULL)
		return (0);

	++ddata->cur;
	if (*ddata->cur == 'Y') {
		if (ext_c != NULL)
			*ext_c = 1;
		++ddata->cur;
	}

	/* Return type */
	if (!FUNC3(ddata, NULL))
		return (0);

	if (*ddata->cur != 'E') {
		if (!FUNC0(ddata, " "))
			return (0);

		non_cv_qualifier = false;
		if (v->size > 0) {
			for (i = 0; (size_t) i < v->size; i++) {
				if (v->q_container[i] != TYPE_RST &&
				    v->q_container[i] != TYPE_VAT &&
				    v->q_container[i] != TYPE_CST) {
					non_cv_qualifier = true;
					break;
				}
			}
		}

		paren = false;
		rc = FUNC5(&ddata->cmd, READ_PTRMEM);
		if (non_cv_qualifier || rc != NULL) {
			if (!FUNC0(ddata, "("))
				return (0);
			paren = true;
		}

		/* Push non-cv qualifiers. */
		ddata->push_qualifier = PUSH_NON_CV_QUALIFIER;
		if (!FUNC2(ddata, v, NULL))
			return (0);

		if (rc) {
			if (non_cv_qualifier && !FUNC0(ddata, " "))
				return (0);
			if ((class_type_size = ddata->class_type.size) == 0)
				return (0);
			class_type =
			    ddata->class_type.container[class_type_size - 1];
			if (class_type == NULL)
				return (0);
			if ((class_type_len = FUNC4(class_type)) == 0)
				return (0);
			if (!FUNC1(ddata, class_type,
			    class_type_len))
				return (0);
			if (!FUNC0(ddata, "::*"))
				return (0);
			/* Push pointer-to-member qualifiers. */
			ddata->push_qualifier = PUSH_ALL_QUALIFIER;
			if (!FUNC2(ddata, rc->data,
			    NULL))
				return (0);
			++ddata->func_type;
		}

		if (paren) {
			if (!FUNC0(ddata, ")"))
				return (0);
			paren = false;
		}

		td.paren = false;
		td.firstp = true;
		limit = 0;
		ddata->is_functype = true;
		for (;;) {
			if (!FUNC3(ddata, &td))
				return (0);
			if (*ddata->cur == 'E')
				break;
			if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
				return (0);
		}
		ddata->is_functype = false;
		if (td.paren) {
			if (!FUNC0(ddata, ")"))
				return (0);
			td.paren = false;
		}

		/* Push CV qualifiers. */
		ddata->push_qualifier = PUSH_CV_QUALIFIER;
		if (!FUNC2(ddata, v, NULL))
			return (0);

		ddata->push_qualifier = PUSH_ALL_QUALIFIER;

		/* Release type qualifier vector. */
		FUNC6(v);
		if (!FUNC7(v))
			return (0);

		/* Push ref-qualifiers. */
		if (ddata->ref_qualifier) {
			switch (ddata->ref_qualifier_type) {
			case TYPE_REF:
				if (!FUNC0(ddata, " &"))
					return (0);
				break;
			case TYPE_RREF:
				if (!FUNC0(ddata, " &&"))
					return (0);
				break;
			default:
				return (0);
			}
			ddata->ref_qualifier = false;
		}
	}

	++ddata->cur;

	return (1);
}