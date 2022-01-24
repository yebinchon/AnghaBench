#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  n_bitlen; } ;
typedef  TYPE_1__ br_rsa_private_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,size_t,int /*<<< orphan*/ ,unsigned char*) ; 

uint32_t
FUNC2(const unsigned char *hash_oid,
	const unsigned char *hash, size_t hash_len,
	const br_rsa_private_key *sk, unsigned char *x)
{
	if (!FUNC1(hash_oid, hash, hash_len, sk->n_bitlen, x)) {
		return 0;
	}
	return FUNC0(x, sk);
}