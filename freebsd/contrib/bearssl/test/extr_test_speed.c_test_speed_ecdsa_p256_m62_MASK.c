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
typedef  int /*<<< orphan*/  br_ec_impl ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  br_ecdsa_i31_sign_asn1 ; 
 int /*<<< orphan*/  br_ecdsa_i31_vrfy_asn1 ; 
 int /*<<< orphan*/  br_secp256r1 ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	const br_ec_impl *ec;

	ec = FUNC0();
	if (ec != NULL) {
		FUNC2("ECDSA m62 P-256",
			ec, &br_secp256r1,
			&br_ecdsa_i31_sign_asn1,
			&br_ecdsa_i31_vrfy_asn1);
	} else {
		FUNC1("%-30s UNAVAILABLE\n", "ECDSA m62 P-256");
	}
}