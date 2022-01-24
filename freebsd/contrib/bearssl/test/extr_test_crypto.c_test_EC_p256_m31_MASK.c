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
typedef  int uint32_t ;

/* Variables and functions */
 int BR_EC_secp256r1 ; 
 int /*<<< orphan*/  br_ec_p256_m31 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC0("EC_p256_m31", &br_ec_p256_m31,
		(uint32_t)1 << BR_EC_secp256r1);
	FUNC1("EC_p256_m31", &br_ec_p256_m31,
		(uint32_t)1 << BR_EC_secp256r1);
}