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
struct TYPE_3__ {unsigned char* data; size_t len; } ;
typedef  TYPE_1__ br_tls_prf_seed_chunk ;
typedef  int /*<<< orphan*/  br_hmac_key_context ;
typedef  int /*<<< orphan*/  br_hmac_context ;
typedef  int /*<<< orphan*/  br_hash_class ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,...) ; 

void
FUNC5(void *dst, size_t len,
	const br_hash_class *dig,
	const void *secret, size_t secret_len, const char *label,
	size_t seed_num, const br_tls_prf_seed_chunk *seed)
{
	unsigned char *buf;
	unsigned char tmp[64], a[64];
	br_hmac_key_context kc;
	br_hmac_context hc;
	size_t label_len, hlen, u;

	if (len == 0) {
		return;
	}
	buf = dst;
	for (label_len = 0; label[label_len]; label_len ++);
	hlen = FUNC0(dig);
	FUNC2(&kc, dig, secret, secret_len);
	FUNC1(&hc, &kc, 0);
	FUNC4(&hc, label, label_len);
	for (u = 0; u < seed_num; u ++) {
		FUNC4(&hc, seed[u].data, seed[u].len);
	}
	FUNC3(&hc, a);
	for (;;) {
		FUNC1(&hc, &kc, 0);
		FUNC4(&hc, a, hlen);
		FUNC4(&hc, label, label_len);
		for (u = 0; u < seed_num; u ++) {
			FUNC4(&hc, seed[u].data, seed[u].len);
		}
		FUNC3(&hc, tmp);
		for (u = 0; u < hlen && u < len; u ++) {
			buf[u] ^= tmp[u];
		}
		buf += u;
		len -= u;
		if (len == 0) {
			return;
		}
		FUNC1(&hc, &kc, 0);
		FUNC4(&hc, a, hlen);
		FUNC3(&hc, a);
	}
}