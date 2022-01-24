#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_3__ {size_t* subs; int len; } ;
struct lmodule {int flags; struct lmodule* path; int /*<<< orphan*/ * handle; TYPE_2__* config; TYPE_1__ index; int /*<<< orphan*/  section; } ;
struct TYPE_4__ {int (* init ) (struct lmodule*,int,char**) ;} ;

/* Variables and functions */
 scalar_t__ COMM_INITIALIZE ; 
 int /*<<< orphan*/  FUNC0 (struct lmodule*,int /*<<< orphan*/ *) ; 
 int LM_ONSTARTLIST ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int MAX_MOD_ARGS ; 
 int RTLD_GLOBAL ; 
 int RTLD_NOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct lmodule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct lmodule*,int /*<<< orphan*/ ) ; 
 scalar_t__ community ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (struct lmodule*,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct lmodule*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  lmodules ; 
 struct lmodule* FUNC8 (int) ; 
 int /*<<< orphan*/  modules_start ; 
 int nprogargs ; 
 char** progargs ; 
 int /*<<< orphan*/  start ; 
 struct lmodule* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 size_t FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char*,char const*,size_t) ; 
 int FUNC13 (struct lmodule*,int,char**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

struct lmodule *
FUNC15(const char *path, const char *section)
{
	struct lmodule *m;
	int err;
	int i;
	char *av[MAX_MOD_ARGS + 1];
	int ac;
	u_int u;

	if ((m = FUNC8(sizeof(*m))) == NULL) {
		FUNC14(LOG_ERR, "lm_load: %m");
		return (NULL);
	}
	m->handle = NULL;
	m->flags = 0;
	FUNC10(m->section, section, sizeof(m->section));

	if ((m->path = FUNC9(path)) == NULL) {
		FUNC14(LOG_ERR, "lm_load: %m");
		goto err;
	}

	/*
	 * Make index
	 */
	m->index.subs[0] = FUNC11(section);
	m->index.len = m->index.subs[0] + 1;
	for (u = 0; u < m->index.subs[0]; u++)
		m->index.subs[u + 1] = section[u];

	/*
	 * Load the object file and locate the config structure
	 */
	if ((m->handle = FUNC5(m->path, RTLD_NOW|RTLD_GLOBAL)) == NULL) {
		FUNC14(LOG_ERR, "lm_load: open %s", FUNC4());
		goto err;
	}

	if ((m->config = FUNC6(m->handle, "config")) == NULL) {
		FUNC14(LOG_ERR, "lm_load: no 'config' symbol %s", FUNC4());
		goto err;
	}

	/*
	 * Insert it into the right place
	 */
	FUNC0(m, &lmodules);

	/* preserve order */
	if (community == COMM_INITIALIZE) {
		m->flags |= LM_ONSTARTLIST;
		FUNC1(&modules_start, m, start);
	}

	/*
	 * make the argument vector.
	 */
	ac = 0;
	for (i = 0; i < nprogargs; i++) {
		if (FUNC11(progargs[i]) >= FUNC11(section) + 1 &&
		    FUNC12(progargs[i], section, FUNC11(section)) == 0 &&
		    progargs[i][FUNC11(section)] == ':') {
			if (ac == MAX_MOD_ARGS) {
				FUNC14(LOG_WARNING, "too many arguments for "
				    "module '%s", section);
				break;
			}
			av[ac++] = &progargs[i][FUNC11(section)+1];
		}
	}
	av[ac] = NULL;

	/*
	 * Run the initialization function
	 */
	if ((err = (*m->config->init)(m, ac, av)) != 0) {
		FUNC14(LOG_ERR, "lm_load: init failed: %d", err);
		FUNC2(&lmodules, m, link);
		goto err;
	}

	return (m);

  err:
	if ((m->flags & LM_ONSTARTLIST) != 0)
		FUNC2(&modules_start, m, start);
	if (m->handle)
		FUNC3(m->handle);
	FUNC7(m->path);
	FUNC7(m);
	return (NULL);
}