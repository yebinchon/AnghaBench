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
typedef  int /*<<< orphan*/  br_shake_context ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 size_t FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 size_t FUNC9 (unsigned char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC12(int security_level,
	size_t minoutlen, size_t maxoutlen, const char *smsg, const char *sref)
{
	unsigned char out[250], ref[250];
	size_t len, rlen, outlen, range;
	int i, j;

	FUNC9(out, smsg);
	outlen = maxoutlen;
	range = maxoutlen - minoutlen + 1;
	for (j = 0; j < 100; j ++) {
		for (i = 1; i < 1001; i ++) {
			br_shake_context sc;

			len = outlen;
			FUNC2(&sc, security_level);
			FUNC3(&sc, out, 16);
			FUNC1(&sc);
			FUNC4(&sc, out, len);
			if (len < 16) {
				FUNC10(out + len, 0, 16 - len);
			}
			outlen = minoutlen
				+ (FUNC0(out + len - 2) % range);
		}
		FUNC11(".");
		FUNC7(stdout);
	}
	rlen = FUNC9(ref, sref);
	if (rlen != len) {
		FUNC8(stderr, "MC: bad length (%u vs %u)\n",
			(unsigned)len, (unsigned)rlen);
		FUNC6(EXIT_FAILURE);
	}
	FUNC5("KAT MC", out, ref, len);
}