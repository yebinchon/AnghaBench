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
typedef  int /*<<< orphan*/  br_tls_prf_seed_chunk ;

/* Variables and functions */
 int /*<<< orphan*/  br_sha256_vtable ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t,int /*<<< orphan*/ *,void const*,size_t,char const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 

void
FUNC2(void *dst, size_t len,
	const void *secret, size_t secret_len, const char *label,
	size_t seed_num, const br_tls_prf_seed_chunk *seed)
{
	FUNC1(dst, 0, len);
	FUNC0(dst, len, &br_sha256_vtable,
		secret, secret_len, label, seed_num, seed);
}