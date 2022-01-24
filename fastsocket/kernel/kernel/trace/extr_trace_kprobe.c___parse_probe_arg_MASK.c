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
struct fetch_type {int /*<<< orphan*/  name; int /*<<< orphan*/ * fetch; } ;
struct fetch_param {int /*<<< orphan*/  fn; void* data; } ;
struct deref_fetch_param {long offset; struct fetch_param orig; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 size_t FETCH_MTD_deref ; 
 size_t FETCH_MTD_memory ; 
 size_t FETCH_MTD_reg ; 
 size_t FETCH_MTD_symbol ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (char*,long) ; 
 struct fetch_type* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (struct deref_fetch_param*) ; 
 struct deref_fetch_param* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,struct fetch_type const*,struct fetch_param*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*,long*) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,long*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,unsigned long*) ; 
 char* FUNC12 (char*,char) ; 

__attribute__((used)) static int FUNC13(char *arg, const struct fetch_type *t,
			     struct fetch_param *f, bool is_return)
{
	int ret = 0;
	unsigned long param;
	long offset;
	char *tmp;

	switch (arg[0]) {
	case '$':
		ret = FUNC5(arg + 1, t, f, is_return);
		break;
	case '%':	/* named register */
		ret = FUNC7(arg + 1);
		if (ret >= 0) {
			f->fn = t->fetch[FETCH_MTD_reg];
			f->data = (void *)(unsigned long)ret;
			ret = 0;
		}
		break;
	case '@':	/* memory or symbol */
		if (FUNC2(arg[1])) {
			ret = FUNC11(arg + 1, 0, &param);
			if (ret)
				break;
			f->fn = t->fetch[FETCH_MTD_memory];
			f->data = (void *)param;
		} else {
			ret = FUNC8(arg + 1, &offset);
			if (ret)
				break;
			f->data = FUNC0(arg + 1, offset);
			if (f->data)
				f->fn = t->fetch[FETCH_MTD_symbol];
		}
		break;
	case '+':	/* deref memory */
		arg++;	/* Skip '+', because strict_strtol() rejects it. */
	case '-':
		tmp = FUNC9(arg, '(');
		if (!tmp)
			break;
		*tmp = '\0';
		ret = FUNC10(arg, 0, &offset);
		if (ret)
			break;
		arg = tmp + 1;
		tmp = FUNC12(arg, ')');
		if (tmp) {
			struct deref_fetch_param *dprm;
			const struct fetch_type *t2 = FUNC1(NULL);
			*tmp = '\0';
			dprm = FUNC4(sizeof(struct deref_fetch_param),
				       GFP_KERNEL);
			if (!dprm)
				return -ENOMEM;
			dprm->offset = offset;
			ret = FUNC13(arg, t2, &dprm->orig,
						is_return);
			if (ret)
				FUNC3(dprm);
			else {
				f->fn = t->fetch[FETCH_MTD_deref];
				f->data = (void *)dprm;
			}
		}
		break;
	}
	if (!ret && !f->fn) {	/* Parsed, but do not find fetch method */
		FUNC6("%s type has no corresponding fetch method.\n",
			t->name);
		ret = -EINVAL;
	}
	return ret;
}