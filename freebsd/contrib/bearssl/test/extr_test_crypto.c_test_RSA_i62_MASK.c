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
typedef  scalar_t__ br_rsa_public ;
typedef  scalar_t__ br_rsa_pss_vrfy ;
typedef  scalar_t__ br_rsa_pss_sign ;
typedef  scalar_t__ br_rsa_private ;
typedef  scalar_t__ br_rsa_pkcs1_vrfy ;
typedef  scalar_t__ br_rsa_pkcs1_sign ;
typedef  scalar_t__ br_rsa_oaep_encrypt ;
typedef  scalar_t__ br_rsa_oaep_decrypt ;
typedef  scalar_t__ br_rsa_keygen ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  br_rsa_i31_compute_modulus ; 
 int /*<<< orphan*/  br_rsa_i31_compute_privexp ; 
 int /*<<< orphan*/  br_rsa_i31_compute_pubexp ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC17(void)
{
	br_rsa_public pub;
	br_rsa_private priv;
	br_rsa_pkcs1_sign sign;
	br_rsa_pkcs1_vrfy vrfy;
	br_rsa_pss_sign pss_sign;
	br_rsa_pss_vrfy pss_vrfy;
	br_rsa_oaep_encrypt menc;
	br_rsa_oaep_decrypt mdec;
	br_rsa_keygen kgen;

	pub = FUNC8();
	priv = FUNC5();
	sign = FUNC3();
	vrfy = FUNC4();
	pss_sign = FUNC6();
	pss_vrfy = FUNC7();
	menc = FUNC2();
	mdec = FUNC1();
	kgen = FUNC0();
	if (pub) {
		if (!priv || !sign || !vrfy || !pss_sign || !pss_vrfy
			|| !menc || !mdec || !kgen)
		{
			FUNC10(stderr, "Inconsistent i62 availability\n");
			FUNC9(EXIT_FAILURE);
		}
		FUNC14("RSA i62 core", pub, priv);
		FUNC16("RSA i62 sign", priv, sign, vrfy);
		FUNC12("RSA i62 OAEP", menc, mdec);
		FUNC13("RSA i62 PSS", pss_sign, pss_vrfy);
		FUNC15("RSA i62 keygen", kgen,
			&br_rsa_i31_compute_modulus, &br_rsa_i31_compute_pubexp,
			&br_rsa_i31_compute_privexp, pub,
			sign, vrfy);
	} else {
		if (priv || sign || vrfy || pss_sign || pss_vrfy
			|| menc || mdec || kgen)
		{
			FUNC10(stderr, "Inconsistent i62 availability\n");
			FUNC9(EXIT_FAILURE);
		}
		FUNC11("Test RSA i62: UNAVAILABLE\n");
	}
}