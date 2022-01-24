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
struct TYPE_10__ {scalar_t__* server_name; scalar_t__ reneg; int /*<<< orphan*/  version_min; int /*<<< orphan*/  version_out; } ;
struct TYPE_9__ {TYPE_2__ eng; } ;
typedef  TYPE_1__ br_ssl_client_context ;

/* Variables and functions */
 int /*<<< orphan*/  BR_ERR_BAD_PARAM ; 
 scalar_t__ BR_ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_ssl_hs_client_init_main ; 
 int /*<<< orphan*/  br_ssl_hs_client_run ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char const*,size_t) ; 
 int FUNC7 (char const*) ; 

int
FUNC8(br_ssl_client_context *cc,
	const char *server_name, int resume_session)
{
	size_t n;

	FUNC5(&cc->eng, NULL, 0, 0);
	cc->eng.version_out = cc->eng.version_min;
	if (!resume_session) {
		FUNC0(cc);
	}
	if (!FUNC3(&cc->eng)) {
		return 0;
	}

	/*
	 * We always set back the "reneg" flag to 0 because we use it
	 * to distinguish between first handshake and renegotiation.
	 * Note that "renegotiation" and "session resumption" are two
	 * different things.
	 */
	cc->eng.reneg = 0;

	if (server_name == NULL) {
		cc->eng.server_name[0] = 0;
	} else {
		n = FUNC7(server_name) + 1;
		if (n > sizeof cc->eng.server_name) {
			FUNC1(&cc->eng, BR_ERR_BAD_PARAM);
			return 0;
		}
		FUNC6(cc->eng.server_name, server_name, n);
	}

	FUNC2(&cc->eng,
		br_ssl_hs_client_init_main, br_ssl_hs_client_run);
	return FUNC4(&cc->eng) == BR_ERR_OK;
}