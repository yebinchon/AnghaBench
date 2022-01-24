#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  val; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Var ;
struct TYPE_10__ {int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  Hash_Entry ;
typedef  TYPE_2__ GNode ;

/* Variables and functions */
 char* ALLSRC ; 
 char* ARCHIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FIND_CMD ; 
 int FIND_ENV ; 
 int FIND_GLOBAL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* IMPSRC ; 
 char* MEMBER ; 
 char* OODATE ; 
 char* PREFIX ; 
 char* TARGET ; 
 TYPE_2__* VAR_CMD ; 
 int /*<<< orphan*/  VAR_FROM_ENV ; 
 TYPE_2__* VAR_GLOBAL ; 
 TYPE_2__* VAR_INTERNAL ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ checkEnvFirst ; 
 char* FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static Var *
FUNC10(const char *name, GNode *ctxt, int flags)
{
    Hash_Entry         	*var;
    Var			*v;

	/*
	 * If the variable name begins with a '.', it could very well be one of
	 * the local ones.  We check the name against all the local variables
	 * and substitute the short version in for 'name' if it matches one of
	 * them.
	 */
	if (*name == '.' && FUNC7((unsigned char) name[1]))
		switch (name[1]) {
		case 'A':
			if (!FUNC8(name, ".ALLSRC"))
				name = ALLSRC;
			if (!FUNC8(name, ".ARCHIVE"))
				name = ARCHIVE;
			break;
		case 'I':
			if (!FUNC8(name, ".IMPSRC"))
				name = IMPSRC;
			break;
		case 'M':
			if (!FUNC8(name, ".MEMBER"))
				name = MEMBER;
			break;
		case 'O':
			if (!FUNC8(name, ".OODATE"))
				name = OODATE;
			break;
		case 'P':
			if (!FUNC8(name, ".PREFIX"))
				name = PREFIX;
			break;
		case 'T':
			if (!FUNC8(name, ".TARGET"))
				name = TARGET;
			break;
		}
#ifdef notyet
    /* for compatibility with gmake */
    if (name[0] == '^' && name[1] == '\0')
	    name = ALLSRC;
#endif

    /*
     * First look for the variable in the given context. If it's not there,
     * look for it in VAR_CMD, VAR_GLOBAL and the environment, in that order,
     * depending on the FIND_* flags in 'flags'
     */
    var = FUNC2(&ctxt->context, name);

    if ((var == NULL) && (flags & FIND_CMD) && (ctxt != VAR_CMD)) {
	var = FUNC2(&VAR_CMD->context, name);
    }
    if (!checkEnvFirst && (var == NULL) && (flags & FIND_GLOBAL) &&
	(ctxt != VAR_GLOBAL))
    {
	var = FUNC2(&VAR_GLOBAL->context, name);
	if ((var == NULL) && (ctxt != VAR_INTERNAL)) {
	    /* VAR_INTERNAL is subordinate to VAR_GLOBAL */
	    var = FUNC2(&VAR_INTERNAL->context, name);
	}
    }
    if ((var == NULL) && (flags & FIND_ENV)) {
	char *env;

	if ((env = FUNC6(name)) != NULL) {
	    int		len;

	    v = FUNC4(sizeof(Var));
	    v->name = FUNC5(name);

	    len = FUNC9(env);

	    FUNC1(&v->val, len + 1);
	    FUNC0(&v->val, len, env);

	    v->flags = VAR_FROM_ENV;
	    return (v);
	} else if (checkEnvFirst && (flags & FIND_GLOBAL) &&
		   (ctxt != VAR_GLOBAL))
	{
	    var = FUNC2(&VAR_GLOBAL->context, name);
	    if ((var == NULL) && (ctxt != VAR_INTERNAL)) {
		var = FUNC2(&VAR_INTERNAL->context, name);
	    }
	    if (var == NULL) {
		return NULL;
	    } else {
		return ((Var *)FUNC3(var));
	    }
	} else {
	    return NULL;
	}
    } else if (var == NULL) {
	return NULL;
    } else {
	return ((Var *)FUNC3(var));
    }
}