#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t session_id_len; int* session_id; } ;
typedef  TYPE_1__ br_ssl_session_parameters ;
typedef  int /*<<< orphan*/  br_ssl_engine_context ;
typedef  int /*<<< orphan*/  br_ssl_client_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC6(br_ssl_engine_context *cc, unsigned char *buf, size_t len)
{
	/*
	 * A single static slot for saving session parameters.
	 */
	static br_ssl_session_parameters slot;
	static int slot_used = 0;

	size_t u;

	if (len < 2 || len > 3) {
		return 0;
	}
	if (len == 3 && (buf[1] != '\r' || buf[2] != '\n')) {
		return 0;
	}
	if (len == 2 && buf[1] != '\n') {
		return 0;
	}
	switch (buf[0]) {
	case 'Q':
		FUNC5(stderr, "closing...\n");
		FUNC1(cc);
		return 1;
	case 'R':
		if (FUNC3(cc)) {
			FUNC5(stderr, "renegotiating...\n");
		} else {
			FUNC5(stderr, "not renegotiating.\n");
		}
		return 1;
	case 'F':
		/*
		 * Session forget is nominally client-only. But the
		 * session parameters are in the engine structure, which
		 * is the first field of the client context, so the cast
		 * still works properly. On the server, this forgetting
		 * has no effect.
		 */
		FUNC5(stderr, "forgetting session...\n");
		FUNC0((br_ssl_client_context *)cc);
		return 1;
	case 'S':
		FUNC5(stderr, "saving session parameters...\n");
		FUNC2(cc, &slot);
		FUNC5(stderr, "  id = ");
		for (u = 0; u < slot.session_id_len; u ++) {
			FUNC5(stderr, "%02X", slot.session_id[u]);
		}
		FUNC5(stderr, "\n");
		slot_used = 1;
		return 1;
	case 'P':
		if (slot_used) {
			FUNC5(stderr, "restoring session parameters...\n");
			FUNC5(stderr, "  id = ");
			for (u = 0; u < slot.session_id_len; u ++) {
				FUNC5(stderr, "%02X", slot.session_id[u]);
			}
			FUNC5(stderr, "\n");
			FUNC4(cc, &slot);
			return 1;
		}
		return 0;
	default:
		return 0;
	}
}