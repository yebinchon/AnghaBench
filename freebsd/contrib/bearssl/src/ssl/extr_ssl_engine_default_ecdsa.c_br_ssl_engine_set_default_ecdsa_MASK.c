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
typedef  int /*<<< orphan*/  br_ssl_engine_context ;

/* Variables and functions */
 int /*<<< orphan*/  br_ec_all_m15 ; 
 int /*<<< orphan*/  br_ec_all_m31 ; 
 int /*<<< orphan*/  br_ecdsa_i15_vrfy_asn1 ; 
 int /*<<< orphan*/  br_ecdsa_i31_vrfy_asn1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(br_ssl_engine_context *cc)
{
#if BR_LOMUL
	br_ssl_engine_set_ec(cc, &br_ec_all_m15);
	br_ssl_engine_set_ecdsa(cc, &br_ecdsa_i15_vrfy_asn1);
#else
	FUNC0(cc, &br_ec_all_m31);
	FUNC1(cc, &br_ecdsa_i31_vrfy_asn1);
#endif
}