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
typedef  int /*<<< orphan*/  br_hmac_key_context ;
typedef  int /*<<< orphan*/  br_hmac_context ;
typedef  int /*<<< orphan*/  br_hash_class ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t,size_t,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC11(const br_hash_class *digest_class,
	const void *key, size_t key_len, const void *data)
{
	br_hmac_key_context kc;
	br_hmac_context hc1, hc2;
	unsigned char buf1[64], buf2[64];
	size_t u, v;

	FUNC1(&kc, digest_class, key, key_len);

	for (u = 0; u < 2; u ++) {
		for (v = 0; v < 130; v ++) {
			size_t min_len, max_len;
			size_t w;

			min_len = v;
			max_len = v + 256;
			for (w = min_len; w <= max_len; w ++) {
				char tmp[30];
				size_t hlen1, hlen2;

				FUNC0(&hc1, &kc, 0);
				FUNC4(&hc1, data, u + w);
				hlen1 = FUNC2(&hc1, buf1);
				FUNC0(&hc2, &kc, 0);
				FUNC4(&hc2, data, u);
				hlen2 = FUNC3(&hc2,
					(const unsigned char *)data + u, w,
					min_len, max_len, buf2);
				if (hlen1 != hlen2) {
					FUNC8(stderr, "HMAC length mismatch:"
						" %u / %u\n", (unsigned)hlen1,
						(unsigned)hlen2);
					FUNC6(EXIT_FAILURE);
				}
				FUNC10(tmp, "HMAC CT %u,%u,%u",
					(unsigned)u, (unsigned)v, (unsigned)w);
				FUNC5(tmp, buf1, buf2, hlen1);
			}
		}
		FUNC9(".");
		FUNC7(stdout);
	}
	FUNC9(" ");
	FUNC7(stdout);
}