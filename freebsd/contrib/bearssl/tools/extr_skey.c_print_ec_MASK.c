#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * pk8pem; int /*<<< orphan*/ * pk8der; int /*<<< orphan*/ * rawpem; int /*<<< orphan*/ * rawder; scalar_t__ print_C; scalar_t__ print_text; } ;
typedef  TYPE_1__ outspec ;
typedef  int /*<<< orphan*/  br_ec_public_key ;
struct TYPE_9__ {int curve; int /*<<< orphan*/  xlen; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ br_ec_private_key ;

/* Variables and functions */
 int BR_EC_KBUF_PUB_MAX_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 (unsigned char*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (unsigned char*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 unsigned char* FUNC11 (size_t) ; 

__attribute__((used)) static int
FUNC12(const br_ec_private_key *sk, outspec *os)
{
	br_ec_public_key pk;
	unsigned kbuf[BR_EC_KBUF_PUB_MAX_SIZE];
	unsigned char *buf;
	size_t len;
	int r;

	if (os->print_text) {
		FUNC6("x", sk->x, sk->xlen);
	}
	if (os->print_C) {
		FUNC5("EC_X", sk->x, sk->xlen);
		FUNC7("\nstatic const br_ec_private_key EC = {\n");
		FUNC7("\t%d,\n", sk->curve);
		FUNC7("\t(unsigned char *)EC_X, sizeof EC_X\n");
		FUNC7("};\n");
	}

	if (os->rawder == NULL && os->rawpem == NULL
		&& os->pk8der == NULL && os->pk8pem == NULL)
	{
		return 1;
	}
	if (FUNC0(FUNC1(), &pk, kbuf, sk) == 0) {
		FUNC4(stderr,
			"ERROR: cannot re-encode (unsupported curve)\n");
		return 0;
	}

	r = 1;
	if (os->rawder != NULL || os->rawpem != NULL) {
		len = FUNC3(NULL, sk, &pk);
		if (len == 0) {
			FUNC4(stderr, "ERROR: cannot re-encode"
				" (unsupported curve)\n");
			return 0;
		}
		buf = FUNC11(len);
		if (FUNC3(buf, sk, &pk) != len) {
			FUNC4(stderr, "ERROR: re-encode failure\n");
			FUNC10(buf);
			return 0;
		}
		if (os->rawder != NULL) {
			r &= FUNC8(os->rawder, buf, len);
		}
		if (os->rawpem != NULL) {
			r &= FUNC9(os->rawpem,
				buf, len, "EC PRIVATE KEY");
		}
		FUNC10(buf);
	}
	if (os->pk8der != NULL || os->pk8pem != NULL) {
		len = FUNC2(NULL, sk, &pk);
		if (len == 0) {
			FUNC4(stderr, "ERROR: cannot re-encode"
				" (unsupported curve)\n");
			return 0;
		}
		buf = FUNC11(len);
		if (FUNC2(buf, sk, &pk) != len) {
			FUNC4(stderr, "ERROR: re-encode failure\n");
			FUNC10(buf);
			return 0;
		}
		if (os->pk8der != NULL) {
			r &= FUNC8(os->pk8der, buf, len);
		}
		if (os->pk8pem != NULL) {
			r &= FUNC9(os->pk8pem,
				buf, len, "PRIVATE KEY");
		}
		FUNC10(buf);
	}
	return r;
}