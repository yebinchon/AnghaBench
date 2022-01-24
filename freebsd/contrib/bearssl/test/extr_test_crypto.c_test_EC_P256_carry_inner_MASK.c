#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int (* mul ) (unsigned char*,size_t,unsigned char*,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ br_ec_impl ;

/* Variables and functions */
 int /*<<< orphan*/  BR_EC_secp256r1 ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (unsigned char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC6 (unsigned char*,size_t,unsigned char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const br_ec_impl *impl, const char *sP, const char *sQ)
{
	unsigned char P[65], Q[sizeof P], k[1];
	size_t plen, qlen;

	plen = FUNC4(P, sP);
	qlen = FUNC4(Q, sQ);
	if (plen != sizeof P || qlen != sizeof P) {
		FUNC3(stderr, "KAT is incorrect\n");
		FUNC1(EXIT_FAILURE);
	}
	k[0] = 0x10;
	if (impl->mul(P, plen, k, 1, BR_EC_secp256r1) != 1) {
		FUNC3(stderr, "P-256 multiplication failed\n");
		FUNC1(EXIT_FAILURE);
	}
	FUNC0("P256_carry", P, Q, plen);
	FUNC5(".");
	FUNC2(stdout);
}