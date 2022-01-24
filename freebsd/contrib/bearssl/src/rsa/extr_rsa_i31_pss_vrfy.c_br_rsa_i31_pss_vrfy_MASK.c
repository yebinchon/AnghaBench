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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  br_rsa_public_key ;
typedef  int /*<<< orphan*/  br_hash_class ;

/* Variables and functions */
 int BR_MAX_RSA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,void const*,size_t,int /*<<< orphan*/  const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,size_t) ; 

uint32_t
FUNC3(const unsigned char *x, size_t xlen,
	const br_hash_class *hf_data, const br_hash_class *hf_mgf1,
	const void *hash, size_t salt_len, const br_rsa_public_key *pk)
{
	unsigned char sig[BR_MAX_RSA_SIZE >> 3];

	if (xlen > (sizeof sig)) {
		return 0;
	}
	FUNC2(sig, x, xlen);
	if (!FUNC0(sig, xlen, pk)) {
		return 0;
	}
	return FUNC1(hf_data, hf_mgf1,
		hash, salt_len, pk, sig);
}