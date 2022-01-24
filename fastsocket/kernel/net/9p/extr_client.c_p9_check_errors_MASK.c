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
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_client {scalar_t__ dotu; } ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ P9_RERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct p9_client *c, struct p9_req_t *req)
{
	int8_t type;
	int err;

	err = FUNC4(req->rc, NULL, &type, NULL, 0);
	if (err) {
		FUNC1(P9_DEBUG_ERROR, "couldn't parse header %d\n", err);
		return err;
	}

	if (type == P9_RERROR) {
		int ecode;
		char *ename;

		err = FUNC5(req->rc, c->dotu, "s?d", &ename, &ecode);
		if (err) {
			FUNC1(P9_DEBUG_ERROR, "couldn't parse error%d\n",
									err);
			return err;
		}

		if (c->dotu)
			err = -ecode;

		if (!err || !FUNC0(err))
			err = FUNC3(ename, FUNC6(ename));

		FUNC1(P9_DEBUG_9P, "<<< RERROR (%d) %s\n", -ecode, ename);

		FUNC2(ename);
	} else
		err = 0;

	return err;
}