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
struct vector_str {size_t size; } ;
struct vector_type_qualifier {struct vector_str ext_name; } ;
struct type_delimit {int paren; int firstp; } ;
struct TYPE_2__ {int size; } ;
struct cpp_demangle_data {char* cur; int ref_qualifier; struct vector_str subst; void* ref_qualifier_type; int /*<<< orphan*/  is_functype; TYPE_1__ output; struct vector_str* cur_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char*) ; 
 void* TYPE_CMX ; 
 void* TYPE_CST ; 
 void* TYPE_EXT ; 
 void* TYPE_IMG ; 
 void* TYPE_PTR ; 
 void* TYPE_REF ; 
 void* TYPE_RREF ; 
 void* TYPE_RST ; 
 void* TYPE_VAT ; 
 void* TYPE_VEC ; 
 int /*<<< orphan*/  FUNC1 (struct vector_str*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpp_demangle_data*,struct vector_str*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpp_demangle_data*,struct vector_type_qualifier*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpp_demangle_data*,char**) ; 
 int /*<<< orphan*/  FUNC8 (struct cpp_demangle_data*,int*,struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC9 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct cpp_demangle_data*,long*) ; 
 int /*<<< orphan*/  FUNC11 (struct cpp_demangle_data*,char**) ; 
 int /*<<< orphan*/  FUNC12 (struct cpp_demangle_data*,struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC13 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct cpp_demangle_data*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC19 (struct vector_str*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct vector_str*) ; 
 int /*<<< orphan*/  FUNC21 (struct vector_str*,char*,size_t) ; 
 char* FUNC22 (struct vector_str*,size_t,int,size_t*) ; 
 int /*<<< orphan*/  FUNC23 (struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC24 (struct vector_type_qualifier*) ; 
 int /*<<< orphan*/  FUNC25 (struct vector_type_qualifier*,void*) ; 

__attribute__((used)) static int
FUNC26(struct cpp_demangle_data *ddata,
    struct type_delimit *td)
{
	struct vector_type_qualifier v;
	struct vector_str *output, sv;
	size_t p_idx, type_str_len, subst_str_len;
	int extern_c, is_builtin;
	long len;
	const char *p;
	char *type_str, *exp_str, *num_str, *subst_str;
	bool skip_ref_qualifier, omit_void;

	if (ddata == NULL)
		return (0);

	output = ddata->cur_output;
	if (td) {
		if (td->paren == false) {
			if (!FUNC0(ddata, "("))
				return (0);
			if (ddata->output.size < 2)
				return (0);
			td->paren = true;
		}

		if (!td->firstp) {
			if (*ddata->cur != 'I') {
				if (!FUNC0(ddata, ", "))
					return (0);
			}
		}
	}

	FUNC2(output != NULL);
	/*
	 * [r, V, K] [P, R, O, C, G, U] builtin, function, class-enum, array
	 * pointer-to-member, template-param, template-template-param, subst
	 */

	if (!FUNC24(&v))
		return (0);

	extern_c = 0;
	is_builtin = 1;
	p_idx = output->size;
	type_str = exp_str = num_str = NULL;
	skip_ref_qualifier = false;

again:

	/* Clear ref-qualifier flag */
	if (*ddata->cur != 'R' && *ddata->cur != 'O' && *ddata->cur != 'E')
		ddata->ref_qualifier = false;

	/* builtin type */
	switch (*ddata->cur) {
	case 'a':
		/* signed char */
		if (!FUNC0(ddata, "signed char"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'A':
		/* array type */
		if (!FUNC6(ddata))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'b':
		/* bool */
		if (!FUNC0(ddata, "bool"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'C':
		/* complex pair */
		if (!FUNC25(&v, TYPE_CMX))
			goto clean;
		++ddata->cur;
		if (td)
			td->firstp = false;
		goto again;

	case 'c':
		/* char */
		if (!FUNC0(ddata, "char"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'd':
		/* double */
		if (!FUNC0(ddata, "double"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'D':
		++ddata->cur;
		switch (*ddata->cur) {
		case 'a':
			/* auto */
			if (!FUNC0(ddata, "auto"))
				goto clean;
			++ddata->cur;
			break;
		case 'c':
			/* decltype(auto) */
			if (!FUNC0(ddata, "decltype(auto)"))
				goto clean;
			++ddata->cur;
			break;
		case 'd':
			/* IEEE 754r decimal floating point (64 bits) */
			if (!FUNC0(ddata, "decimal64"))
				goto clean;
			++ddata->cur;
			break;
		case 'e':
			/* IEEE 754r decimal floating point (128 bits) */
			if (!FUNC0(ddata, "decimal128"))
				goto clean;
			++ddata->cur;
			break;
		case 'f':
			/* IEEE 754r decimal floating point (32 bits) */
			if (!FUNC0(ddata, "decimal32"))
				goto clean;
			++ddata->cur;
			break;
		case 'h':
			/* IEEE 754r half-precision floating point (16 bits) */
			if (!FUNC0(ddata, "half"))
				goto clean;
			++ddata->cur;
			break;
		case 'i':
			/* char32_t */
			if (!FUNC0(ddata, "char32_t"))
				goto clean;
			++ddata->cur;
			break;
		case 'n':
			/* std::nullptr_t (i.e., decltype(nullptr)) */
			if (!FUNC0(ddata, "decltype(nullptr)"))
				goto clean;
			++ddata->cur;
			break;
		case 's':
			/* char16_t */
			if (!FUNC0(ddata, "char16_t"))
				goto clean;
			++ddata->cur;
			break;
		case 'v':
			/* gcc vector_size extension. */
			++ddata->cur;
			if (*ddata->cur == '_') {
				++ddata->cur;
				if (!FUNC7(ddata,
				    &exp_str))
					goto clean;
				if (!FUNC1(&v.ext_name, exp_str))
					goto clean;
			} else {
				if (!FUNC11(ddata,
				    &num_str))
					goto clean;
				if (!FUNC1(&v.ext_name, num_str))
					goto clean;
			}
			if (*ddata->cur != '_')
				goto clean;
			++ddata->cur;
			if (!FUNC25(&v, TYPE_VEC))
				goto clean;
			if (td)
				td->firstp = false;
			goto again;
		default:
			goto clean;
		}
		goto rtn;

	case 'e':
		/* long double */
		if (!FUNC0(ddata, "long double"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'E':
		/* unexpected end except ref-qualifiers */
		if (ddata->ref_qualifier && ddata->is_functype) {
			skip_ref_qualifier = true;
			/* Pop the delimiter. */
			FUNC3(ddata);
			goto rtn;
		}
		goto clean;

	case 'f':
		/* float */
		if (!FUNC0(ddata, "float"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'F':
		/* function */
		if (!FUNC8(ddata, &extern_c, &v))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'g':
		/* __float128 */
		if (!FUNC0(ddata, "__float128"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'G':
		/* imaginary */
		if (!FUNC25(&v, TYPE_IMG))
			goto clean;
		++ddata->cur;
		if (td)
			td->firstp = false;
		goto again;

	case 'h':
		/* unsigned char */
		if (!FUNC0(ddata, "unsigned char"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'i':
		/* int */
		if (!FUNC0(ddata, "int"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'I':
		/* template args. */
		/* handles <substitute><template-args> */
		p_idx = output->size;
		if (!FUNC15(ddata))
			goto clean;
		if ((subst_str = FUNC22(output, p_idx,
		    output->size - 1, &subst_str_len)) == NULL)
			goto clean;
		if (!FUNC20(&sv)) {
			FUNC17(subst_str);
			goto clean;
		}
		if (!FUNC21(&sv, subst_str, subst_str_len)) {
			FUNC17(subst_str);
			FUNC18(&sv);
			goto clean;
		}
		FUNC17(subst_str);
		if (!FUNC4(ddata, &sv)) {
			FUNC18(&sv);
			goto clean;
		}
		FUNC18(&sv);
		goto rtn;

	case 'j':
		/* unsigned int */
		if (!FUNC0(ddata, "unsigned int"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'K':
		/* const */
		if (!FUNC25(&v, TYPE_CST))
			goto clean;
		++ddata->cur;
		if (td)
			td->firstp = false;
		goto again;

	case 'l':
		/* long */
		if (!FUNC0(ddata, "long"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'm':
		/* unsigned long */
		if (!FUNC0(ddata, "unsigned long"))
			goto clean;

		++ddata->cur;

		goto rtn;
	case 'M':
		/* pointer to member */
		if (!FUNC12(ddata, &v))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'n':
		/* __int128 */
		if (!FUNC0(ddata, "__int128"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'o':
		/* unsigned __int128 */
		if (!FUNC0(ddata, "unsigned __int128"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'O':
		/* rvalue reference */
		if (ddata->ref_qualifier)
			goto clean;
		if (!FUNC25(&v, TYPE_RREF))
			goto clean;
		ddata->ref_qualifier = true;
		ddata->ref_qualifier_type = TYPE_RREF;
		++ddata->cur;
		if (td)
			td->firstp = false;
		goto again;

	case 'P':
		/* pointer */
		if (!FUNC25(&v, TYPE_PTR))
			goto clean;
		++ddata->cur;
		if (td)
			td->firstp = false;
		goto again;

	case 'r':
		/* restrict */
		if (!FUNC25(&v, TYPE_RST))
			goto clean;
		++ddata->cur;
		if (td)
			td->firstp = false;
		goto again;

	case 'R':
		/* reference */
		if (ddata->ref_qualifier)
			goto clean;
		if (!FUNC25(&v, TYPE_REF))
			goto clean;
		ddata->ref_qualifier = true;
		ddata->ref_qualifier_type = TYPE_REF;
		++ddata->cur;
		if (td)
			td->firstp = false;
		goto again;

	case 's':
		/* short, local string */
		if (!FUNC0(ddata, "short"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'S':
		/* substitution */
		if (!FUNC14(ddata))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 't':
		/* unsigned short */
		if (!FUNC0(ddata, "unsigned short"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'T':
		/* template parameter */
		if (!FUNC16(ddata))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'u':
		/* vendor extended builtin */
		++ddata->cur;
		if (!FUNC13(ddata))
			goto clean;
		is_builtin = 0;
		goto rtn;

	case 'U':
		/* vendor extended type qualifier */
		++ddata->cur;
		if (!FUNC10(ddata, &len))
			goto clean;
		if (len <= 0)
			goto clean;
		if (!FUNC21(&v.ext_name, ddata->cur, len))
			return (0);
		ddata->cur += len;
		if (!FUNC25(&v, TYPE_EXT))
			goto clean;
		if (td)
			td->firstp = false;
		goto again;

	case 'v':
		/* void */
		omit_void = false;
		if (td && td->firstp) {
			/*
			 * peek into next bytes and see if we should omit
			 * the "void".
			 */
			omit_void = true;
			for (p = ddata->cur + 1; *p != '\0'; p++) {
				if (*p == 'E')
					break;
				if (*p != 'R' && *p != 'O') {
					omit_void = false;
					break;
				}
			}
		}
		if (!omit_void && !FUNC0(ddata, "void"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'V':
		/* volatile */
		if (!FUNC25(&v, TYPE_VAT))
			goto clean;
		++ddata->cur;
		if (td)
			td->firstp = false;
		goto again;

	case 'w':
		/* wchar_t */
		if (!FUNC0(ddata, "wchar_t"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'x':
		/* long long */
		if (!FUNC0(ddata, "long long"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'y':
		/* unsigned long long */
		if (!FUNC0(ddata, "unsigned long long"))
			goto clean;
		++ddata->cur;
		goto rtn;

	case 'z':
		/* ellipsis */
		if (!FUNC0(ddata, "..."))
			goto clean;
		++ddata->cur;
		goto rtn;
	}

	if (!FUNC9(ddata))
		goto clean;

	is_builtin = 0;
rtn:

	type_str = FUNC22(output, p_idx, output->size - 1,
	    &type_str_len);

	if (is_builtin == 0) {
		if (!FUNC19(&ddata->subst, type_str, type_str_len) &&
		    !FUNC21(&ddata->subst, type_str, type_str_len))
			goto clean;
	}

	if (!skip_ref_qualifier &&
	    !FUNC5(ddata, &v, type_str))
		goto clean;

	if (td)
		td->firstp = false;

	FUNC17(type_str);
	FUNC17(exp_str);
	FUNC17(num_str);
	FUNC23(&v);

	return (1);
clean:
	FUNC17(type_str);
	FUNC17(exp_str);
	FUNC17(num_str);
	FUNC23(&v);

	return (0);
}