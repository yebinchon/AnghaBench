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
typedef  int /*<<< orphan*/  br_ec_public_key ;
typedef  int /*<<< orphan*/  br_ec_impl ;

/* Variables and functions */
 int FIELD_LEN ; 
 size_t FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,void const*,size_t,int /*<<< orphan*/  const*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void const*,size_t) ; 

uint32_t
FUNC3(const br_ec_impl *impl,
	const void *hash, size_t hash_len,
	const br_ec_public_key *pk,
	const void *sig, size_t sig_len)
{
	/*
	 * We use a double-sized buffer because a malformed ASN.1 signature
	 * may trigger a size expansion when converting to "raw" format.
	 */
	unsigned char rsig[(FIELD_LEN << 2) + 24];

	if (sig_len > ((sizeof rsig) >> 1)) {
		return 0;
	}
	FUNC2(rsig, sig, sig_len);
	sig_len = FUNC0(rsig, sig_len);
	return FUNC1(impl, hash, hash_len, pk, rsig, sig_len);
}