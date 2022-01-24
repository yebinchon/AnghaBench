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
typedef  int /*<<< orphan*/  br_aes_big_ctr_keys ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(const void *key, size_t key_len, int encrypt,
	void *ctr, void *cbcmac, unsigned char *data, size_t len)
{
	br_aes_big_ctr_keys bc;
	int i;

	FUNC0(&bc, key, key_len);
	for (i = 0; i < 2; i ++) {
		/*
		 * CBC-MAC is computed on the encrypted data, so in
		 * first pass if decrypting, second pass if encrypting.
		 */
		if (cbcmac != NULL
			&& ((encrypt && i == 1) || (!encrypt && i == 0)))
		{
			unsigned char zz[16];
			size_t u;

			FUNC3(zz, cbcmac, sizeof zz);
			for (u = 0; u < len; u += 16) {
				unsigned char tmp[16];
				size_t v;

				for (v = 0; v < 16; v ++) {
					tmp[v] = zz[v] ^ data[u + v];
				}
				FUNC4(zz, 0, sizeof zz);
				FUNC1(&bc,
					tmp, FUNC2(tmp + 12), zz, 16);
			}
			FUNC3(cbcmac, zz, sizeof zz);
		}

		/*
		 * CTR encryption/decryption is done only in the first pass.
		 * We process data block per block, because the CTR-only
		 * class uses a 32-bit counter, while the CTR+CBC-MAC
		 * class uses a 128-bit counter.
		 */
		if (ctr != NULL && i == 0) {
			unsigned char zz[16];
			size_t u;

			FUNC3(zz, ctr, sizeof zz);
			for (u = 0; u < len; u += 16) {
				int i;

				FUNC1(&bc,
					zz, FUNC2(zz + 12), data + u, 16);
				for (i = 15; i >= 0; i --) {
					zz[i] = (zz[i] + 1) & 0xFF;
					if (zz[i] != 0) {
						break;
					}
				}
			}
			FUNC3(ctr, zz, sizeof zz);
		}
	}
}