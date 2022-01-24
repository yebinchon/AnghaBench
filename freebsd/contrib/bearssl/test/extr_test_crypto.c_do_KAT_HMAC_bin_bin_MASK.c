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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,unsigned char*,size_t) ; 
 size_t FUNC5 (unsigned char*,char const*) ; 

__attribute__((used)) static void
FUNC6(const br_hash_class *digest_class,
	const void *key, size_t key_len,
	const void *data, size_t data_len, const char *href)
{
	br_hmac_key_context kc;
	br_hmac_context ctx;
	unsigned char tmp[64], ref[64];
	size_t u, len;

	len = FUNC5(ref, href);
	FUNC1(&kc, digest_class, key, key_len);
	FUNC0(&ctx, &kc, 0);
	FUNC3(&ctx, data, data_len);
	FUNC2(&ctx, tmp);
	FUNC4("KAT HMAC 1", tmp, ref, len);

	FUNC0(&ctx, &kc, 0);
	for (u = 0; u < data_len; u ++) {
		FUNC3(&ctx, (const unsigned char *)data + u, 1);
	}
	FUNC2(&ctx, tmp);
	FUNC4("KAT HMAC 2", tmp, ref, len);

	for (u = 0; u < data_len; u ++) {
		FUNC0(&ctx, &kc, 0);
		FUNC3(&ctx, data, u);
		FUNC2(&ctx, tmp);
		FUNC3(&ctx,
			(const unsigned char *)data + u, data_len - u);
		FUNC2(&ctx, tmp);
		FUNC4("KAT HMAC 3", tmp, ref, len);
	}
}