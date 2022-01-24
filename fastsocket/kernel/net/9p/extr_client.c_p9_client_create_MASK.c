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
struct p9_client {scalar_t__ msize; TYPE_1__* trans_mod; int /*<<< orphan*/  dotu; int /*<<< orphan*/ * fidpool; int /*<<< orphan*/  fidlist; int /*<<< orphan*/  lock; int /*<<< orphan*/ * trans; } ;
struct TYPE_2__ {int (* create ) (struct p9_client*,char const*,char*) ;scalar_t__ maxsize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 struct p9_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  P9_DEBUG_MUX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ P9_IOHDRSZ ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct p9_client* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_client*) ; 
 int FUNC7 (struct p9_client*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct p9_client*) ; 
 int FUNC10 (char*,struct p9_client*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct p9_client*,char const*,char*) ; 
 TYPE_1__* FUNC13 () ; 

struct p9_client *FUNC14(const char *dev_name, char *options)
{
	int err;
	struct p9_client *clnt;

	err = 0;
	clnt = FUNC5(sizeof(struct p9_client), GFP_KERNEL);
	if (!clnt)
		return FUNC0(-ENOMEM);

	clnt->trans_mod = NULL;
	clnt->trans = NULL;
	FUNC11(&clnt->lock);
	FUNC1(&clnt->fidlist);
	clnt->fidpool = FUNC8();
	if (FUNC2(clnt->fidpool)) {
		err = FUNC4(clnt->fidpool);
		clnt->fidpool = NULL;
		goto error;
	}

	FUNC9(clnt);

	err = FUNC10(options, clnt);
	if (err < 0)
		goto error;

	if (!clnt->trans_mod)
		clnt->trans_mod = FUNC13();

	if (clnt->trans_mod == NULL) {
		err = -EPROTONOSUPPORT;
		FUNC3(P9_DEBUG_ERROR,
				"No transport defined or default transport\n");
		goto error;
	}

	FUNC3(P9_DEBUG_MUX, "clnt %p trans %p msize %d dotu %d\n",
		clnt, clnt->trans_mod, clnt->msize, clnt->dotu);

	err = clnt->trans_mod->create(clnt, dev_name, options);
	if (err)
		goto error;

	if ((clnt->msize+P9_IOHDRSZ) > clnt->trans_mod->maxsize)
		clnt->msize = clnt->trans_mod->maxsize-P9_IOHDRSZ;

	err = FUNC7(clnt);
	if (err)
		goto error;

	return clnt;

error:
	FUNC6(clnt);
	return FUNC0(err);
}