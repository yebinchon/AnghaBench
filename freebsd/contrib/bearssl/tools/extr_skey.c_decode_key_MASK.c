#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  outspec ;
typedef  int /*<<< orphan*/  br_skey_decoder_context ;
struct TYPE_7__ {scalar_t__ n_bitlen; } ;
typedef  TYPE_1__ br_rsa_private_key ;
struct TYPE_8__ {int curve; } ;
typedef  TYPE_2__ br_ec_private_key ;

/* Variables and functions */
#define  BR_KEYTYPE_EC 129 
#define  BR_KEYTYPE_RSA 128 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 char* FUNC6 (int) ; 
 char* FUNC7 (int,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC12(const unsigned char *buf, size_t len, outspec *os)
{
	br_skey_decoder_context dc;
	int err, ret;

	FUNC2(&dc);
	FUNC5(&dc, buf, len);
	err = FUNC4(&dc);
	if (err != 0) {
		const char *errname, *errmsg;

		FUNC8(stderr, "ERROR (decoding): err=%d\n", err);
		errname = FUNC7(err, &errmsg);
		if (errname != NULL) {
			FUNC8(stderr, "  %s: %s\n", errname, errmsg);
		} else {
			FUNC8(stderr, "  (unknown)\n");
		}
		return 0;
	}
	ret = 1;
	switch (FUNC3(&dc)) {
		const br_rsa_private_key *rk;
		const br_ec_private_key *ek;

	case BR_KEYTYPE_RSA:
		rk = FUNC1(&dc);
		FUNC11("RSA key (%lu bits)\n", (unsigned long)rk->n_bitlen);
		ret = FUNC10(rk, os);
		break;

	case BR_KEYTYPE_EC:
		ek = FUNC0(&dc);
		FUNC11("EC key (curve = %d: %s)\n",
			ek->curve, FUNC6(ek->curve));
		ret = FUNC9(ek, os);
		break;

	default:
		FUNC8(stderr, "Unknown key type: %d\n",
			FUNC3(&dc));
		ret = 0;
		break;
	}

	return ret;
}