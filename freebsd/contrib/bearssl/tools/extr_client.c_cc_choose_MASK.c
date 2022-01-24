#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_10__ {int const issuer_key_type; scalar_t__ verbose; scalar_t__ chain_len; int /*<<< orphan*/ * chain; TYPE_3__* sk; } ;
typedef  TYPE_4__ ccert_context ;
typedef  int /*<<< orphan*/  br_ssl_client_context ;
typedef  int /*<<< orphan*/  br_ssl_client_certificate_class ;
struct TYPE_11__ {int hash_id; scalar_t__ chain_len; int /*<<< orphan*/ * chain; int /*<<< orphan*/  auth_type; } ;
typedef  TYPE_5__ br_ssl_client_certificate ;
struct TYPE_7__ {int curve; } ;
struct TYPE_8__ {TYPE_1__ ec; } ;
struct TYPE_9__ {int key_type; TYPE_2__ key; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_AUTH_ECDH ; 
 int /*<<< orphan*/  BR_AUTH_ECDSA ; 
 int /*<<< orphan*/  BR_AUTH_RSA ; 
#define  BR_KEYTYPE_EC 129 
#define  BR_KEYTYPE_RSA 128 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/  const*) ; 
 void* FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC7(const br_ssl_client_certificate_class **pctx,
	const br_ssl_client_context *cc, uint32_t auth_types,
	br_ssl_client_certificate *choices)
{
	ccert_context *zc;
	int scurve;

	zc = (ccert_context *)pctx;
	scurve = FUNC0(cc);
	if (zc->verbose) {
		unsigned hashes;

		hashes = FUNC1(cc);
		if ((auth_types & 0x00FF) != 0) {
			FUNC4(stderr, "supported: RSA signatures:");
			FUNC6(auth_types, hashes);
			FUNC4(stderr, "\n");
		}
		if ((auth_types & 0xFF00) != 0) {
			FUNC4(stderr, "supported: ECDSA signatures:");
			FUNC6(auth_types >> 8, hashes >> 8);
			FUNC4(stderr, "\n");
		}
		if ((auth_types & 0x010000) != 0) {
			FUNC4(stderr, "supported:"
				" fixed ECDH (cert signed with RSA)\n");
		}
		if ((auth_types & 0x020000) != 0) {
			FUNC4(stderr, "supported:"
				" fixed ECDH (cert signed with ECDSA)\n");
		}
		if (scurve) {
			FUNC4(stderr, "server key curve: %s (%d)\n",
				FUNC3(scurve), scurve);
		} else {
			FUNC4(stderr, "server key is not EC\n");
		}
	}
	switch (zc->sk->key_type) {
	case BR_KEYTYPE_RSA:
		if ((choices->hash_id = FUNC2(auth_types)) >= 0) {
			if (zc->verbose) {
				FUNC4(stderr, "using RSA, hash = %d (%s)\n",
					choices->hash_id,
					FUNC5(choices->hash_id));
			}
			choices->auth_type = BR_AUTH_RSA;
			choices->chain = zc->chain;
			choices->chain_len = zc->chain_len;
			return;
		}
		break;
	case BR_KEYTYPE_EC:
		if (zc->issuer_key_type != 0
			&& scurve == zc->sk->key.ec.curve)
		{
			int x;

			x = (zc->issuer_key_type == BR_KEYTYPE_RSA) ? 16 : 17;
			if (((auth_types >> x) & 1) != 0) {
				if (zc->verbose) {
					FUNC4(stderr, "using static ECDH\n");
				}
				choices->auth_type = BR_AUTH_ECDH;
				choices->hash_id = -1;
				choices->chain = zc->chain;
				choices->chain_len = zc->chain_len;
				return;
			}
		}
		if ((choices->hash_id = FUNC2(auth_types >> 8)) >= 0) {
			if (zc->verbose) {
				FUNC4(stderr, "using ECDSA, hash = %d (%s)\n",
					choices->hash_id,
					FUNC5(choices->hash_id));
			}
			choices->auth_type = BR_AUTH_ECDSA;
			choices->chain = zc->chain;
			choices->chain_len = zc->chain_len;
			return;
		}
		break;
	}
	if (zc->verbose) {
		FUNC4(stderr, "no matching client certificate\n");
	}
	choices->chain = NULL;
	choices->chain_len = 0;
}