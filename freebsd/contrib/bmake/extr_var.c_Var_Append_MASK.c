#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int flags; int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ Var ;
struct TYPE_12__ {char* name; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  Hash_Entry ;
typedef  TYPE_2__ GNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FIND_CMD ; 
 int FIND_ENV ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  VAR ; 
 int /*<<< orphan*/  VARF_WANTRES ; 
 TYPE_2__* VAR_CMD ; 
 int VAR_FROM_CMD ; 
 int VAR_FROM_ENV ; 
 TYPE_2__* VAR_GLOBAL ; 
 TYPE_1__* FUNC6 (char const*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

void
FUNC13(const char *name, const char *val, GNode *ctxt)
{
    Var		   *v;
    Hash_Entry	   *h;
    char *expanded_name = NULL;

    if (FUNC11(name, '$') != NULL) {
	expanded_name = FUNC8(NULL, name, ctxt, VARF_WANTRES);
	if (expanded_name[0] == 0) {
	    if (FUNC3(VAR)) {
		FUNC9(debug_file, "Var_Append(\"%s\", \"%s\", ...) "
			"name expands to empty string - ignored\n",
			name, val);
	    }
	    FUNC10(expanded_name);
	    return;
	}
	name = expanded_name;
    }

    v = FUNC6(name, ctxt, (ctxt == VAR_GLOBAL) ? (FIND_CMD|FIND_ENV) : 0);

    if (v == NULL) {
	FUNC7(name, val, ctxt, 0);
    } else if (ctxt == VAR_CMD || !(v->flags & VAR_FROM_CMD)) {
	FUNC0(&v->val, ' ');
	FUNC1(&v->val, FUNC12(val), val);

	if (FUNC3(VAR)) {
	    FUNC9(debug_file, "%s:%s = %s\n", ctxt->name, name,
		   FUNC2(&v->val, NULL));
	}

	if (v->flags & VAR_FROM_ENV) {
	    /*
	     * If the original variable came from the environment, we
	     * have to install it in the global context (we could place
	     * it in the environment, but then we should provide a way to
	     * export other variables...)
	     */
	    v->flags &= ~VAR_FROM_ENV;
	    h = FUNC4(&ctxt->context, name, NULL);
	    FUNC5(h, v);
	}
    }
    FUNC10(expanded_name);
}