#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int record_type_in; int application_data; } ;
typedef  TYPE_1__ br_ssl_engine_context ;

/* Variables and functions */
 int /*<<< orphan*/  BR_ERR_UNEXPECTED ; 
#define  BR_SSL_ALERT 131 
#define  BR_SSL_APPLICATION_DATA 130 
#define  BR_SSL_CHANGE_CIPHER_SPEC 129 
#define  BR_SSL_HANDSHAKE 128 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t) ; 
 unsigned char* FUNC4 (TYPE_1__*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t) ; 

void
FUNC6(br_ssl_engine_context *cc, size_t len)
{
	unsigned char *buf;

	FUNC5(cc, len);
	if (FUNC0(cc)) {
		return;
	}

	/*
	 * We just received some bytes from the peer. This may have
	 * yielded some payload bytes, in which case we must process
	 * them according to the record type.
	 */
	buf = FUNC4(cc, &len);
	if (buf != NULL) {
		switch (cc->record_type_in) {
		case BR_SSL_CHANGE_CIPHER_SPEC:
		case BR_SSL_ALERT:
		case BR_SSL_HANDSHAKE:
			FUNC2(cc, 0);
			break;
		case BR_SSL_APPLICATION_DATA:
			if (cc->application_data == 1) {
				break;
			}

			/*
			 * If we are currently closing, and waiting for
			 * a close_notify from the peer, then incoming
			 * application data should be discarded.
			 */
			if (cc->application_data == 2) {
				FUNC3(cc, len);
				break;
			}

			/* Fall through */
		default:
			FUNC1(cc, BR_ERR_UNEXPECTED);
			break;
		}
	}
}