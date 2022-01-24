#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  xlen; void* x; int /*<<< orphan*/  curve; } ;
struct TYPE_11__ {int /*<<< orphan*/  iqlen; void* iq; int /*<<< orphan*/  dqlen; void* dq; int /*<<< orphan*/  dplen; void* dp; int /*<<< orphan*/  qlen; void* q; int /*<<< orphan*/  plen; void* p; int /*<<< orphan*/  n_bitlen; } ;
struct TYPE_13__ {TYPE_2__ ec; TYPE_1__ rsa; } ;
struct TYPE_14__ {int key_type; TYPE_3__ key; } ;
typedef  TYPE_4__ private_key ;
typedef  int /*<<< orphan*/  br_skey_decoder_context ;
struct TYPE_15__ {int /*<<< orphan*/  iqlen; int /*<<< orphan*/  iq; int /*<<< orphan*/  dqlen; int /*<<< orphan*/  dq; int /*<<< orphan*/  dplen; int /*<<< orphan*/  dp; int /*<<< orphan*/  qlen; int /*<<< orphan*/  q; int /*<<< orphan*/  plen; int /*<<< orphan*/  p; int /*<<< orphan*/  n_bitlen; } ;
typedef  TYPE_5__ br_rsa_private_key ;
struct TYPE_16__ {int /*<<< orphan*/  xlen; int /*<<< orphan*/  x; int /*<<< orphan*/  curve; } ;
typedef  TYPE_6__ br_ec_private_key ;

/* Variables and functions */
#define  BR_KEYTYPE_EC 129 
#define  BR_KEYTYPE_RSA 128 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 char* FUNC6 (int,char const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (int) ; 

__attribute__((used)) static private_key *
FUNC10(const unsigned char *buf, size_t len)
{
	br_skey_decoder_context dc;
	int err;
	private_key *sk;

	FUNC2(&dc);
	FUNC5(&dc, buf, len);
	err = FUNC4(&dc);
	if (err != 0) {
		const char *errname, *errmsg;

		FUNC7(stderr, "ERROR (decoding): err=%d\n", err);
		errname = FUNC6(err, &errmsg);
		if (errname != NULL) {
			FUNC7(stderr, "  %s: %s\n", errname, errmsg);
		} else {
			FUNC7(stderr, "  (unknown)\n");
		}
		return NULL;
	}
	switch (FUNC3(&dc)) {
		const br_rsa_private_key *rk;
		const br_ec_private_key *ek;

	case BR_KEYTYPE_RSA:
		rk = FUNC1(&dc);
		sk = FUNC9(sizeof *sk);
		sk->key_type = BR_KEYTYPE_RSA;
		sk->key.rsa.n_bitlen = rk->n_bitlen;
		sk->key.rsa.p = FUNC8(rk->p, rk->plen);
		sk->key.rsa.plen = rk->plen;
		sk->key.rsa.q = FUNC8(rk->q, rk->qlen);
		sk->key.rsa.qlen = rk->qlen;
		sk->key.rsa.dp = FUNC8(rk->dp, rk->dplen);
		sk->key.rsa.dplen = rk->dplen;
		sk->key.rsa.dq = FUNC8(rk->dq, rk->dqlen);
		sk->key.rsa.dqlen = rk->dqlen;
		sk->key.rsa.iq = FUNC8(rk->iq, rk->iqlen);
		sk->key.rsa.iqlen = rk->iqlen;
		break;

	case BR_KEYTYPE_EC:
		ek = FUNC0(&dc);
		sk = FUNC9(sizeof *sk);
		sk->key_type = BR_KEYTYPE_EC;
		sk->key.ec.curve = ek->curve;
		sk->key.ec.x = FUNC8(ek->x, ek->xlen);
		sk->key.ec.xlen = ek->xlen;
		break;

	default:
		FUNC7(stderr, "Unknown key type: %d\n",
			FUNC3(&dc));
		sk = NULL;
		break;
	}

	return sk;
}