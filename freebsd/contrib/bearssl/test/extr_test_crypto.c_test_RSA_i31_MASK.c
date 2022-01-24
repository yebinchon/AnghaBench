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

/* Variables and functions */
 int /*<<< orphan*/  br_rsa_i31_compute_modulus ; 
 int /*<<< orphan*/  br_rsa_i31_compute_privexp ; 
 int /*<<< orphan*/  br_rsa_i31_compute_pubexp ; 
 int /*<<< orphan*/  br_rsa_i31_keygen ; 
 int /*<<< orphan*/  br_rsa_i31_oaep_decrypt ; 
 int /*<<< orphan*/  br_rsa_i31_oaep_encrypt ; 
 int /*<<< orphan*/  br_rsa_i31_pkcs1_sign ; 
 int /*<<< orphan*/  br_rsa_i31_pkcs1_vrfy ; 
 int /*<<< orphan*/  br_rsa_i31_private ; 
 int /*<<< orphan*/  br_rsa_i31_pss_sign ; 
 int /*<<< orphan*/  br_rsa_i31_pss_vrfy ; 
 int /*<<< orphan*/  br_rsa_i31_public ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void)
{
	FUNC2("RSA i31 core", &br_rsa_i31_public, &br_rsa_i31_private);
	FUNC4("RSA i31 sign", &br_rsa_i31_private,
		&br_rsa_i31_pkcs1_sign, &br_rsa_i31_pkcs1_vrfy);
	FUNC0("RSA i31 OAEP",
		&br_rsa_i31_oaep_encrypt, &br_rsa_i31_oaep_decrypt);
	FUNC1("RSA i31 PSS",
		&br_rsa_i31_pss_sign, &br_rsa_i31_pss_vrfy);
	FUNC3("RSA i31 keygen", &br_rsa_i31_keygen,
		&br_rsa_i31_compute_modulus, &br_rsa_i31_compute_pubexp,
		&br_rsa_i31_compute_privexp, &br_rsa_i31_public,
		&br_rsa_i31_pkcs1_sign, &br_rsa_i31_pkcs1_vrfy);
}