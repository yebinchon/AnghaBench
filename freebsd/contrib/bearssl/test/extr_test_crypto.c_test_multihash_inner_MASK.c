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
typedef  int /*<<< orphan*/  br_sha1_context ;
typedef  int /*<<< orphan*/  br_multihash_context ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned char*,unsigned char*,size_t) ; 
 size_t FUNC7 (int,unsigned char*,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC10(br_multihash_context *mc)
{
	/*
	 * Try hashing messages for all lengths from 0 to 257 bytes
	 * (inclusive). Each attempt is done twice, with data input
	 * either in one go, or byte by byte. In the byte by byte
	 * test, intermediate result are obtained and checked.
	 */
	size_t len;
	unsigned char buf[258];
	int i;
	int tcount;

	tcount = 0;
	for (len = 0; len < sizeof buf; len ++) {
		br_sha1_context sc;
		unsigned char tmp[20];

		FUNC3(&sc);
		FUNC5(&sc, buf, len);
		FUNC4(&sc, tmp);
		buf[len] = tmp[0];
	}
	for (len = 0; len <= 257; len ++) {
		size_t u;

		FUNC0(mc);
		FUNC2(mc, buf, len);
		for (i = 1; i <= 6; i ++) {
			unsigned char tmp[64], tmp2[64];
			size_t olen, olen2;

			olen = FUNC1(mc, i, tmp);
			if (olen == 0) {
				continue;
			}
			olen2 = FUNC7(i, buf, len, tmp2);
			if (olen != olen2) {
				FUNC9(stderr,
					"Bad hash output length: %u / %u\n",
					(unsigned)olen, (unsigned)olen2);
				FUNC8(EXIT_FAILURE);
			}
			FUNC6("Hash output", tmp, tmp2, olen);
			tcount ++;
		}

		FUNC0(mc);
		for (u = 0; u < len; u ++) {
			FUNC2(mc, buf + u, 1);
			for (i = 1; i <= 6; i ++) {
				unsigned char tmp[64], tmp2[64];
				size_t olen, olen2;

				olen = FUNC1(mc, i, tmp);
				if (olen == 0) {
					continue;
				}
				olen2 = FUNC7(i, buf, u + 1, tmp2);
				if (olen != olen2) {
					FUNC9(stderr, "Bad hash output"
						" length: %u / %u\n",
						(unsigned)olen,
						(unsigned)olen2);
					FUNC8(EXIT_FAILURE);
				}
				FUNC6("Hash output", tmp, tmp2, olen);
			}
		}
	}
	return tcount;
}