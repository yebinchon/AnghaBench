#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pub; int /*<<< orphan*/  priv; TYPE_3__* hf; int /*<<< orphan*/  sraw; int /*<<< orphan*/  sasn1; int /*<<< orphan*/  msg; } ;
typedef  TYPE_1__ ecdsa_kat_vector ;
struct TYPE_7__ {int /*<<< orphan*/  vtable; } ;
typedef  TYPE_2__ br_hash_compat_context ;
typedef  int (* br_ecdsa_vrfy ) (int /*<<< orphan*/  const*,unsigned char*,size_t,scalar_t__,unsigned char*,size_t) ;
typedef  size_t (* br_ecdsa_sign ) (int /*<<< orphan*/  const*,TYPE_3__*,unsigned char*,int /*<<< orphan*/ ,unsigned char*) ;
typedef  int /*<<< orphan*/  br_ec_impl ;
struct TYPE_8__ {size_t desc; int /*<<< orphan*/  (* out ) (int /*<<< orphan*/ *,unsigned char*) ;int /*<<< orphan*/  (* update ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* init ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 size_t BR_HASHDESC_OUT_MASK ; 
 size_t BR_HASHDESC_OUT_OFF ; 
 TYPE_1__* ECDSA_KAT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*) ; 

__attribute__((used)) static void
FUNC10(const br_ec_impl *iec,
	br_ecdsa_sign sign, br_ecdsa_vrfy vrfy, int asn1)
{
	size_t u;

	for (u = 0;; u ++) {
		const ecdsa_kat_vector *kv;
		unsigned char hash[64];
		size_t hash_len;
		unsigned char sig[150], sig2[150];
		size_t sig_len, sig2_len;
		br_hash_compat_context hc;

		kv = &ECDSA_KAT[u];
		if (kv->pub == 0) {
			break;
		}
		kv->hf->init(&hc.vtable);
		kv->hf->update(&hc.vtable, kv->msg, FUNC6(kv->msg));
		kv->hf->out(&hc.vtable, hash);
		hash_len = (kv->hf->desc >> BR_HASHDESC_OUT_OFF)
			& BR_HASHDESC_OUT_MASK;
		if (asn1) {
			sig_len = FUNC3(sig, kv->sasn1);
		} else {
			sig_len = FUNC3(sig, kv->sraw);
		}

		if (vrfy(iec, hash, hash_len,
			kv->pub, sig, sig_len) != 1)
		{
			FUNC2(stderr, "ECDSA KAT verify failed (1)\n");
			FUNC0(EXIT_FAILURE);
		}
		hash[0] ^= 0x80;
		if (vrfy(iec, hash, hash_len,
			kv->pub, sig, sig_len) != 0)
		{
			FUNC2(stderr, "ECDSA KAT verify shoud have failed\n");
			FUNC0(EXIT_FAILURE);
		}
		hash[0] ^= 0x80;
		if (vrfy(iec, hash, hash_len,
			kv->pub, sig, sig_len) != 1)
		{
			FUNC2(stderr, "ECDSA KAT verify failed (2)\n");
			FUNC0(EXIT_FAILURE);
		}

		sig2_len = sign(iec, kv->hf, hash, kv->priv, sig2);
		if (sig2_len == 0) {
			FUNC2(stderr, "ECDSA KAT sign failed\n");
			FUNC0(EXIT_FAILURE);
		}
		if (sig2_len != sig_len || FUNC4(sig, sig2, sig_len) != 0) {
			FUNC2(stderr, "ECDSA KAT wrong signature value\n");
			FUNC0(EXIT_FAILURE);
		}

		FUNC5(".");
		FUNC1(stdout);
	}
}