#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  br_x509_certificate ;
struct TYPE_5__ {int /*<<< orphan*/  eng; } ;
typedef  TYPE_1__ br_ssl_server_context ;
typedef  int /*<<< orphan*/  br_ec_private_key ;

/* Variables and functions */
 int /*<<< orphan*/  BR_KEYTYPE_SIGN ; 
 int /*<<< orphan*/  BR_TLS12 ; 
#define  BR_TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 128 
 int /*<<< orphan*/  br_ec_all_m15 ; 
 int /*<<< orphan*/  br_ecdsa_i31_sign_asn1 ; 
 int /*<<< orphan*/  br_sha256_ID ; 
 int /*<<< orphan*/  br_sha256_vtable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  br_tls12_sha256_prf ; 

void
FUNC8(br_ssl_server_context *cc,
	const br_x509_certificate *chain, size_t chain_len,
	const br_ec_private_key *sk)
{
	static const uint16_t suites[] = {
		BR_TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
	};

	/*
	 * Reset server context and set supported versions to TLS-1.2 (only).
	 */
	FUNC7(cc);
	FUNC5(&cc->eng, BR_TLS12, BR_TLS12);

	/*
	 * Set suites and elliptic curve implementation (for ECDHE).
	 */
	FUNC4(&cc->eng, suites,
		(sizeof suites) / (sizeof suites[0]));
	FUNC1(&cc->eng, &br_ec_all_m15);

	/*
	 * Set the "server policy": handler for the certificate chain
	 * and private key operations.
	 */
	FUNC6(cc, chain, chain_len, sk,
		BR_KEYTYPE_SIGN, 0, &br_ec_all_m15, br_ecdsa_i31_sign_asn1);

	/*
	 * Set supported hash functions.
	 */
	FUNC2(&cc->eng, br_sha256_ID, &br_sha256_vtable);

	/*
	 * Set the PRF implementations.
	 */
	FUNC3(&cc->eng, &br_tls12_sha256_prf);

	/*
	 * Symmetric encryption.
	 */
	FUNC0(&cc->eng);
}